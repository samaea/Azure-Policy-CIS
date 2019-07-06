# 4.1 Ensure that 'Auditing' is set to 'On'

## Policy Effects
Deny
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Enable auditing on SQL Servers.

### Rationale: 
The Azure platform allows a SQL server to be created as a service. Enabling auditing at the
server level ensures that all existing and newly created databases on the SQL server
instance are audited. Auditing policy applied on the SQL database does not override
auditing policy and settings applied on the particular SQL server where the database is
hosted.
Auditing tracks database events and writes them to an audit log in the Azure storage
account. It also helps to maintain regulatory compliance, understand database activity, and
gain insight into discrepancies and anomalies that could indicate business concerns or
suspected security violations.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.1%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.1%2FPolicy%2Fazurepolicy.json)

## Caveat
As of the time of writing the Deny effect only works for existing SQL servers. It cannot be used to prevent net new resources being made with auditing disabled. This is being investigated.