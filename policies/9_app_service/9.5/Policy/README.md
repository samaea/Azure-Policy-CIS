# 9.5 Ensure that Register with Azure Active Directory is enabled on App Service 

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Managed service identity in App Service makes the app more secure by eliminating secrets
from the app, such as credentials in the connection strings. When registering with Azure
Active Directory in the app service, the app will connect to other Azure services securely
without the need of username and passwords.

### Rationale: 
App Service provides a highly scalable, self-patching web hosting service in Azure. It also
provides a managed identity for apps, which is a turn-key solution for securing access to
Azure SQL Database and other Azure services.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.5%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.5%2FPolicy%2Fazurepolicy.json)