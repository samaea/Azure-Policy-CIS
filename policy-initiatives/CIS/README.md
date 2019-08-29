## Background
This initiative combines all the CIS available builtin policies with the custom CIS policies that are available in this repo.

## Prerequisites

 - You will need to **downlaod the CIS custom policies** and **import them into your Azure environment** otherwise the policy references will not be found. You can download the custom policies from:- https://github.com/samaea/Azure-Policy-CIS/tree/master/policies.
 - You will need to **modify the policyset-definition.json** file and find all the **{SCOPE}** references and replace them with the location of the custom policy within your subscription/management group. For example, you could replace **{SCOPE}** with **/providers/Microsoft.Management/managementGroups/GlobalMgmtGroup/**

```powershell
az policy set-definition create --name PSExampleSetDefinition --definitions '{PATHTOINITIATIVE}\policyset-definition.json' --management-group {MANAGEMENTGROUPNAME}
```
