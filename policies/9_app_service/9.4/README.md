# 9.4 Ensure the web app has 'Client Certificates (Incoming client certificates)' set to 'On' 

## Policy Effects
Audit
Deny
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Client certificates allow for the app to request a certificate for incoming requests. Only
clients that have a valid certificate will be able to reach the app.

### Rationale: 
The TLS mutual authentication technique in enterprise environments ensures the
authenticity of clients to the server. If incoming client certificates are enabled, then only an
authenticated client who has valid certificates can access the app.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.4%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.4%2FPolicy%2Fazurepolicy.json)