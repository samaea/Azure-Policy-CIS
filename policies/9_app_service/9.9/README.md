# 9.9 Ensure that 'Java version' is the latest, if used to run the web app

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Periodically, newer versions are released for Java software either due to security flaws or
to include additional functionality. Using the latest Java version for web apps is
recommended in order to take advantage of security fixes, if any, and/or new
functionalities of the newer version.

### Rationale: 
Newer versions may contain security enhancements and additional functionality. Using the
latest software version is recommended in order to take advantage of enhancements and
new capabilities. With each software installation, organizations need to determine if a
given update meets their requirements and also verify the compatibility and support
provided for any additional software against the update revision that is selected.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.9%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F9_app_service%2F9.9%2FPolicy%2Fazurepolicy.json)