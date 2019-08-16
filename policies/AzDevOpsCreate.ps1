<#
This Sample Code is provided for the purpose of illustration only and is not intended to be used in a production environment.
THIS SAMPLE CODE AND ANY RELATED INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, 
INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE. We grant You
a nonexclusive, royalty-free right to use and modify the Sample Code and to reproduce and distribute the object code form of
the Sample Code, provided that You agree: (i) to not use Our name, logo, or trademarks to market Your software product in which
the Sample Code is embedded; (ii) to include a valid copyright notice on Your software product in which the Sample Code is embedded;
and (iii) to indemnify, hold harmless, and defend Us and Our suppliers from and against any claims or lawsuits, including attorneys’
fees, that arise or result from the use or distribution of the Sample Code.
#>

$policyDefRootFolder = "C:\Users\hussel\Documents\GitHub\Azure-Policy-CIS\policies"
$subscriptionName = "Microsoft Azure Internal Consumption"

class PolicyDef {
    [string]$PolicyName
    [string]$PolicyRulePath
    [string]$PolicyParamPath
    [string]$PolicyPropertiesPath
    [string]$ResourceId
}

function Select-Policies {
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory = $true)]
        [System.IO.FileInfo[]]$PolicyFolders
    )

    Write-Verbose "Processing policies"
    $policyList = @()


    foreach ($policyDefinition in $PolicyFolders) {

        $policy = New-Object -TypeName PolicyDef
        $policy.PolicyRulePath = $($policyDefinition.Directory.FullName + "\azurepolicy.def.json")
        $policy.PolicyParamPath = $($policyDefinition.Directory.FullName + "\azurepolicy.params.json")
        $policy.PolicyPropertiesPath = $($policyDefinition.Directory.FullName + "\azurepolicy.properties.json")
        $policyList += $policy




    }

               

    return $policyList
}

function Add-Policies {
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory = $true)]
        [PolicyDef[]]$Policies,
        [String]$subscriptionId
    )

    Write-Verbose "Creating policy definitions"
    $policyDefList = @()
    foreach ($policy in $Policies) {
        $policyProperties = Get-Content $policy.PolicyPropertiesPath | ConvertFrom-Json;

        # Take the policy's display name and only use the first 64 characters to avoid hitting the 64 character length limit.
        # Using a randomly generated policy name results in duplicates of the same policy instead of updating an existing one
        # when running the command more than once.

        $policyName = $policyProperties.properties.displayName[0..63] -join ""
        
        $policyDef = New-AzureRmPolicyDefinition -Name $policyName -DisplayName $policyProperties.properties.displayName -Policy $policy.PolicyRulePath -Parameter $policy.PolicyParamPath -SubscriptionId $subscriptionId -Description $policyProperties.properties.description -Metadata "{`"category`":`"$($policyProperties.properties.metadata.category)`"}" -Mode $policyProperties.properties.mode
        $policyDefList += $policyDef

    }

    return $policyDefList
}

$subscriptionId = (Get-AzureRmSubscription -SubscriptionName $subscriptionName).Id
Write-Verbose $policyDefRootFolder
Write-Verbose $subscriptionId

#get list of policy folders by recursively looking for directory that have a file with the prefix *.rules.json

$foldersWithPolicies = Get-ChildItem -Path $policyDefRootFolder -Recurse *.def.json

 if($foldersWithPolicies.length -eq 0){

    throw 'ERROR: No policies found.'
}

$policies = Select-Policies -PolicyFolders ($foldersWithPolicies)

$policyDefinitions = Add-Policies -Policies $policies -subscriptionId $subscriptionId
$policyDefsJson = ($policyDefinitions | ConvertTo-Json -Depth 10 -Compress)

Write-Host "##vso[task.setvariable variable=PolicyDefs]$policyDefsJson"