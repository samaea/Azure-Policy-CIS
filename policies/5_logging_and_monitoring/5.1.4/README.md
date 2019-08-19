# 5.1.4 Ensure the log profile captures activity logs for all regions including global

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Configure the log profile to export activities from all Azure supported regions/locations
including global.

### Rationale: 
A log profile controls how the activity Log is exported.
Ensuring that logs are exported from all the Azure supported regions/locations means that
logs for potentially unexpected activities occurring in otherwise unused regions are stored
and made available for incident response and investigations.
Including global region/location in the log profile locations ensures all events from the
control/management plane will be exported, as many events in the activity log are global
events.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.1.4%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.1.4%2FPolicy%2Fazurepolicy.json)
