# 5.1.1 Ensure that a Log Profile exists

## Policy Effects
AuditIfNotExists
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Enable log profile for exporting activity logs.

### Rationale: 
A log profile controls how an activity log is exported. By default, activity logs are retained
only for 90 days. Log profiles should be defined so that logs can be exported and stored for
a longer duration in order to analyze security activities within an Azure subscription.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.1.1%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.1.1%2FPolicy%2Fazurepolicy.json)
