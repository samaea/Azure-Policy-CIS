# 9.10 Ensure that 'HTTP Version' is the latest, if used to run the web app

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Periodically, newer versions are released for HTTP either due to security flaws or to
include additional functionality. Using the latest HTTP version for web apps to take
advantage of security fixes, if any, and/or new functionalities of the newer version.

### Rationale: 
Newer versions may contain security enhancements and additional functionality. Using the
latest version is recommended in order to take advantage of enhancements and new
capabilities. With each software installation, organizations need to determine if a given
update meets their requirements and also verify the compatibility and support provided
for any additional software against the update revision that is selected.
HTTP 2.0 has additional performance improvements on the head-of-line blocking problem
of old HTTP version, header compression, and prioritization of requests. HTTP 2.0 no
longer supports HTTP 1.1's chunked transfer encoding mechanism, as it provides its own,
more efficient, mechanisms for data streaming.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.10%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.10%2FPolicy%2Fazurepolicy.json)