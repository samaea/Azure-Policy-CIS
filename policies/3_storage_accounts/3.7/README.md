# 3.7 Ensure default network access rule for Storage Accounts is set to deny

## Policy Effects
Deny
Audit
Disabled

## Azure Policy Docs

See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Restricting default network access helps to provide a new layer of security, since storage
accounts accept connections from clients on any network. To limit access to selected
networks, the default action must be changed.

### Rationale: 
Storage accounts should be configured to deny access to traffic from all networks
(including internet traffic). Access can be granted to traffic from specific Azure Virtual
networks, allowing a secure network boundary for specific applications to be built. Access
can also be granted to public internet IP address ranges, to enable connections from
specific internet or on-premises clients. When network rules are configured, only
applications from allowed networks can access a storage account. When calling from an
allowed network, applications continue to require proper authorization (a valid access key
or SAS token) to access the storage account.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F3_storage_accounts%2F3.7%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F3_storage_accounts%2F3.7%2FPolicy%2Fazurepolicy.json)