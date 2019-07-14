# 4.13 Ensure 'Enforce SSL connection' is set to 'ENABLED' for PostgreSQL Database Server

## Policy Effects
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Enable SSL connection on PostgreSQL Servers.

### Rationale: 
SSL connectivity helps to provide a new layer of security, by connecting database server
to client applications using Secure Sockets Layer (SSL). Enforcing SSL connections between
database server and client applications helps protect against "man in the middle" attacks
by encrypting the data stream between the server and application.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.13%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.13%2FPolicy%2Fazurepolicy.json)
