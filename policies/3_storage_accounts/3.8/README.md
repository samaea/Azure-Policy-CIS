# 3.8 Ensure 'Trusted Microsoft Services' is enabled for Storage Account access

## Policy Effects
Deny
Audit
Disabled

## Azure Policy Docs

See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Some Microsoft services that interact with storage accounts operate from networks that
can't be granted access through network rules. To help this type of service work as
intended, allow the set of trusted Microsoft services to bypass the network rules. These
services will then use strong authentication to access the storage account. If the Allow
trusted Microsoft services exception is enabled, the following services: Azure Backup,
Azure Site Recovery, Azure DevTest Labs, Azure Event Grid, Azure Event Hubs, Azure
Networking, Azure Monitor and Azure SQL Data Warehouse (when registered in the
subscription), are granted access to the storage account.

### Rationale: 
Turning on firewall rules for storage account will block access to incoming requests for
data, including from other Azure services. This includes using the Portal, writing logs, etc.
We can re-enable functionality. The customer can get access to services like Monitor,
Networking, Hubs, and Event Grid by enabling "Trusted Microsoft Services" through
exceptions. Also, Backup and Restore of Virtual Machines using unmanaged disks in storage
accounts with network rules applied is supported via creating an exception.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F3_storage_accounts%2F3.8%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F3_storage_accounts%2F3.8%2FPolicy%2Fazurepolicy.json)