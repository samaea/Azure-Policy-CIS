# 9.3 Ensure web app is using the latest version of TLS encryption

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
The TLS(Transport Layer Security) protocol secures transmission of data over the internet
using standard encryption technology. Encryption should be set with the latest version of
TLS. App service allows TLS 1.2 by default, which is the recommended TLS level by
industry standards, such as PCI DSS.

### Rationale: 
App service currently allows the web app to set TLS versions 1.0, 1.1 and 1.2. It is highly
recommended to use the latest TLS 1.2 version for web app secure connections.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.3%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.3%2FPolicy%2Fazurepolicy.json)