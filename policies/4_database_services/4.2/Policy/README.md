# 4.2 Ensure that 'AuditActionGroups' in 'auditing' policy for a SQL server is set properly

## Policy Effects
Deny
Audit
Disabled

## Azure Policy Docs
See more information and a complete walk-through of deploying Policy programmatically at
[docs.microsoft.com](https://docs.microsoft.com/azure/governance/policy/samples/allowed-custom-images).

### Description: 
Configure the 'AuditActionGroups' property to appropriate groups to capture all the critical
activities on the SQL Server and all the SQL databases hosted on the SQL server.

### Rationale: 
To capture all critical activities done on SQL Servers and databases within sql servers,
auditing should be configured to capture appropriate 'AuditActionGroups'. Property
AuditActionGroup should contains at least SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP,
FAILED_DATABASE_AUTHENTICATION_GROUP, BATCH_COMPLETED_GROUP to ensure
comprehensive audit logging for SQL servers and SQL databases hosted on SQL Server.

## Deploy with Azure portal

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.2%2FPolicy%2Fazurepolicy.json)
[![Deploy to Azure Gov](https://docs.microsoft.com/azure/governance/policy/media/deploy/deployGovbutton.png)](https://portal.azure.us/?#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fgithub.com%2Fmrajess%2FAzure-Policy-CIS%2Fblob%2Fmaster%2Fpolicies%2F4_database_services%2F4.2%2FPolicy%2Fazurepolicy.json)

## Caveat
As of the time of writing the Deny effect only works for existing SQL servers. It cannot be used to prevent net new resources being made with auditing disabled. This is being investigated.