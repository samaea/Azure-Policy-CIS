# 9.2 Ensure web app redirects all HTTP traffic to HTTPS in Azure App Service

## Policy Effects
Audit
Deny
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Azure Web Apps allows sites to run under both HTTP and HTTPS by default. Web apps can
be accessed by anyone using non-secure HTTP links by default. Non-secure HTTP requests
can be restricted and all HTTP requests redirected to the secure HTTPS port. It is
recommended to enforce HTTPS-only traffic.

### Rationale: 
Enabling HTTPS-only traffic will redirect all non-secure HTTP request to HTTPS ports.
HTTPS uses the SSL/TLS protocol to provide a secure connection, which is both encrypted
and authenticated. So it is important to support HTTPS for the security benefits.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.2%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.2%2FPolicy%2Fazurepolicy.json)