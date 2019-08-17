# 6.3 Ensure no SQL Databases allow ingress 0.0.0.0/0

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Ensure that no SQL Databases allow ingress from 0.0.0.0/0 (ANY IP).

### Rationale: 
SQL Server includes a firewall to block access to unauthorized connections. More granular
IP addresses can be defined by referencing the range of addresses available from specific
datacenters.
By default, for a SQL server, a Firewall exists with StartIp of 0.0.0.0 and EndIP of 0.0.0.0
allowing access to all the Azure services.
Additionally, a custom rule can be set up with StartIp of 0.0.0.0 and EndIP of
255.255.255.255 allowing access from ANY IP over the Internet.
In order to reduce the potential attack surface for a SQL server, firewall rules should be
defined with more granular IP addresses by referencing the range of addresses available
from specific datacenters.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F6_networking%2F6.3%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmrajess%2FAzure-Policy-CIS%2Fmaster%2Fpolicies%2F6_networking%2F6.3%2FPolicy%2Fazurepolicy.json)