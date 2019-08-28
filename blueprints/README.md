## Prerequisites

This doc assumes you have a basic understanding of how blueprints work. If you've never used Blueprints before, this will be a little overwhelming. We recommend you build your first blueprint with the UI to understand how everything works. You can try it at [aka.ms/getblueprints](https://aka.ms/getblueprints) and learn more about it in the [docs](https://docs.microsoft.com/en-us/azure/governance/blueprints/overview) or watch this [15 minute overview](https://www.youtube.com/watch?v=cQ9D-d6KkMY).

**Download the [Az.Blueprint module](https://powershellgallery.com/packages/Az.Blueprint/) from the powershell gallery:**

```powershell
Install-Module -Name Az.Blueprint
```

## Quickstart
Push a blueprint definition to Azure:

```powershell
Import-AzBlueprintWithArtifact -Name {BLUEPRINTNAME} -ManagementGroupId {MANAGEMENTGROUPID} -InputPath  {PATH e.g. C:\Users\hussel\bp1\latest\SharedServicesISO}
```
