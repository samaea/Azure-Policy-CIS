# 6.1 Ensure that RDP access is restricted from the internet

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Disable RDP access on network security groups from the Internet.

### Rationale: 
The potential security problem with using RDP over the Internet is that attackers can use
various brute force techniques to gain access to Azure Virtual Machines. Once the attackers
gain access, they can use a virtual machine as a launch point for compromising other
machines on an Azure Virtual Network or even attack networked devices outside of Azure.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F6_networking%2F6.1%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F6_networking%2F6.1%2FPolicy%2Fazurepolicy.json)