# 8.5 Enable role-based access control (RBAC) within Azure Kubernetes Services

## Policy Effects
Audit
Deny
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Ensure that RBAC is enabled on all Azure Kubernetes Services Instances.

### Rationale: 
Azure Kubernetes Services has the capability to integrate Azure Active Directory users and
groups into Kubernetes RBAC controls within the AKS Kubernetes API Server. This should
be utilized to enable granular access to Kubernetes resources within the AKS clusters
supporting RBAC controls not just of the overarching AKS instance but also the individual
resources managed within Kubernetes.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F8_other_security_considerations%2F8.5%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F8_other_security_considerations%2F8.5%2FPolicy%2Fazurepolicy.json)