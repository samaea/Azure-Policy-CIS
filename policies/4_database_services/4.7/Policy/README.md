# 4.7 Ensure that 'Email service and co-administrators' is 'Enabled' 

## Policy Effects
AuditIfNotExists
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Enable service and co-administrators to receive security alerts from the SQL server.

### Rationale: 
Providing the email address to receive alerts ensures that any detection of anomalous
activities is reported as soon as possible, making it more likely to mitigate any potential
risk sooner.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.7%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.7%2FPolicy%2Fazurepolicy.json)
