# 2.2 Ensure that 'Automatic provisioning of monitoring agent' is set to 'On'

## Policy Effects
AuditIfNotExist
Disabled

## Azure Policy Docs

See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Enable automatic provisioning of the monitoring agent to collect security data.

### Rationale: 
When Automatic provisioning of monitoring agent is turned on, Azure Security Center
provisions the Microsoft Monitoring Agent on all existing supported Azure virtual
machines and any new ones that are created. The Microsoft Monitoring Agent scans for
various security-related configurations and events such as system updates, OS
vulnerabilities, endpoint protection, and provides alerts.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F2_security_center%2F2.2%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F2_security_center%2F2.2%2FPolicy%2Fazurepolicy.json)