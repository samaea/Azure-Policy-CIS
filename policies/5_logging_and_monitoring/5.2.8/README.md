# 5.2.8 Ensure that Activity Log Alert exists for Create or Update or Delete SQL Server Firewall Rule

## Policy Effects
AuditIfNotExists
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Create an activity log alert for the Create or Update or Delete SQL Server Firewall Rule
event.

### Rationale: 
Monitoring for Create or Update or Delete SQL Server Firewall Rule events gives insight
into network access changes and may reduce the time it takes to detect suspicious activity.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.2.8%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.2.8%2FPolicy%2Fazurepolicy.json)
