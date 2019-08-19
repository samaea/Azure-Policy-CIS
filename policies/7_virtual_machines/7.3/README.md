# 7.3 Ensure that 'Unattached disks' are encrypted

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Ensure that unattached disks in a subscription are encrypted.

### Rationale: 
Encrypting the IaaS VM's disks ensures that its entire content is fully unrecoverable
without a key and thus protects the volume from unwarranted reads. Even if the disk is not
attached to any of the VMs, there is always a risk where a compromised user account with
administrative access to VM service can mount/attach these data disks which may lead to
sensitive information disclosure and tampering.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F7_virtual_machines%2F7.3%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F7_virtual_machines%2F7.3%2FPolicy%2Fazurepolicy.json)