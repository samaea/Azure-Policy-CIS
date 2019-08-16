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
        [System.IO.DirectoryInfo[]]$PolicyFolders
    )

    Write-Verbose "Processing policies"
    $policyList = @()
    foreach ($policyDefinition in $PolicyFolders) {
        $policy = New-Object -TypeName PolicyDef
        $policy.PolicyName = $policyDefinition.Name
        $policy.PolicyRulePath = $($policyDefinition.FullName + "\azurepolicy.def.json")
        $policy.PolicyParamPath = $($policyDefinition.FullName + "\azurepolicy.params.json")
        $policy.PolicyPropertiesPath = $($policyDefinition.FullName + "\azurepolicy.properties.json")
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
        $policyNameGuid = New-Guid;


        $policyDef = New-AzureRmPolicyDefinition -Name $policyNameGuid -DisplayName $policyProperties.properties.displayName -Policy $policy.PolicyRulePath -Parameter $policy.PolicyParamPath -SubscriptionId $subscriptionId -Description $policyProperties.properties.description -Metadata "{`"category`":`"$($policyProperties.properties.metadata.category)`"}" -Mode $policyProperties.properties.mode
        $policyDefList += $policyDef
    }
    return $policyDefList
}

$subscriptionId = (Get-AzureRmSubscription -SubscriptionName $subscriptionName).Id
Write-Verbose $policyDefRootFolder
Write-Verbose $subscriptionId

#get list of policy folders
$policies = Select-Policies -PolicyFolders (Get-ChildItem -Path $policyDefRootFolder -Directory)
$policyDefinitions = Add-Policies -Policies $policies -subscriptionId $subscriptionId
$policyDefsJson = ($policyDefinitions | ConvertTo-Json -Depth 10 -Compress)

Write-Host "##vso[task.setvariable variable=PolicyDefs]$policyDefsJson"