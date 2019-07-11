# 9.1 Ensure App Service Authentication is set on Azure App Service

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Azure App Service Authentication is a feature that can prevent anonymous HTTP requests
from reaching the API app, or authenticate those that have tokens before they reach the API
app. If an anonymous request is received from a browser, App Service will redirect to a
logon page. To handle the logon process, a choice from a set of identity providers can be
made, or a custom authentication mechanism can be implemented.

### Rationale: 
By Enabling App Service Authentication, every incoming HTTP request passes through it
before being handled by the application code. It also handles authentication of users with
the specified provider (Azure Active Directory, Facebook, Google, Microsoft Account, and
Twitter), validation, storing and refreshing of tokens, managing the authenticated sessions
and injecting identity information into request headers.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.1%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.1%2FPolicy%2Fazurepolicy.json)