## Quickstart
Push an policy initiative to Azure:

```powershell
az policy set-definition create --name PSExampleSetDefinition --definitions '{PATHTOINITIATIVE}\policyset-definition.json' --management-group {MANAGEMENTGROUPNAME}
```
