# 5.1.2 Ensure that Activity Log Retention is set 365 days or greater

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Ensure activity log retention is set for 365 days or greater.

### Rationale: 
A log profile controls how the activity log is exported and retained. Since the average time
to detect a breach is 210 days, the activity log should be retained for 365 days or more in
order to have time to respond to any incidents.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.1.2%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F5_logging_and_monitoring%2F5.1.2%2FPolicy%2Fazurepolicy.json)
