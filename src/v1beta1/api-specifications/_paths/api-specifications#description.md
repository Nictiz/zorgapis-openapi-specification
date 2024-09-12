Returns a list of API specifications.

<details>
<summary>Details</summary>

## Sort expressions

The following table lists the field names and directions you can use in a sort expression.

| Field               | Type        | Direction | Example                         |
|---------------------|-------------|-----------|---------------------------------|
| `id`                | `uuid`      | `asc`     | `?sort=asc(id)`                 |
|                     |             | `desc`    | `?sort=desc(id)`                |
| `name`              | `string`    | `asc`     | `?sort=asc(name)`               |
|                     |             | `desc`    | `?sort=desc(name)`              |
| `createTime`        | `date-time` | `asc`     | `?sort=asc(createTime)`         |
|                     |             | `desc`    | `?sort=desc(createTime)`        |
| `updateTime`        | `date-time` | `asc`     | `?sort=asc(updateTime)`         |
|                     |             | `desc`    | `?sort=desc(updateTime)`        |

### Default sort expression

If the `sort` parameter is omitted, the default sort expression is used:

```
?sort=desc(createTime)
```

This causes results to be sorted by `createTime` in descending order (from most recent to oldest).

## Filter expressions

The following table lists the field names and operators you can use in a filter expression.

| Field                                                                   | Type                    | Operator | Example                                                                                                                          |
|-------------------------------------------------------------------------|-------------------------|----------|----------------------------------------------------------------------------------------------------------------------------------|
| `id`                                                                    | `uuid`                  | `eq`     | `?filter=eq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`                                                                          |
|                                                                         |                         | `neq`    | `?filter=neq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`                                                                         |
| `name`                                                                  | `string`                | `eq`     | `?filter=eq(name,"Verzamelen Huisartsgegevens")`                                                                                 |
|                                                                         |                         | `neq`    | `?filter=neq(name,"Verzamelen Huisartsgegevens")`                                                                                |
|                                                                         |                         | `has`    | `?filter=has(name,"Verzamelen")`                                                                                                 |
|                                                                         |                         | `stw`    | `?filter=stw(name,"Verzamelen")`                                                                                                 |
|                                                                         |                         | `enw`    | `?filter=enw(name,"Huisartsgegevens")`                                                                                           |
|                                                                         |                         | `reg`    | `?filter=reg(name,"^[a-zA-Z0-9 ]+$")`                                                                                            |
| `organizationId`                                                        | `uuid`                  | `eq`     | `?filter=eq(organizationId,"533d3fe3-bccc-405a-9904-4f516e892856")`                                                              |
|                                                                         |                         | `neq`    | `?filter=neq(organizationId,"533d3fe3-bccc-405a-9904-4f516e892856")`                                                             |
| `architecturalStyle`                                                    | `ApiArchitecturalStyle` | `eq`     | `?filter=eq(architecturalStyle,"REST")`                                                                                          |
|                                                                         |                         | `neq`    | `?filter=neq(architecturalStyle,"REST")`                                                                                         |
| `mainVersion.communicationStandardVersions.$it.id`                      | `uuid`                  | `eq`     | `?filter=any(mainVersion.communicationStandardVersions,eq($it.id,"533d3fe3-bccc-405a-9904-4f516e892856"))`                       |
|                                                                         |                         | `neq`    | `?filter=all(mainVersion.communicationStandardVersions,neq($it.id,"533d3fe3-bccc-405a-9904-4f516e892856"))`                      |
| `mainVersion.communicationStandardVersions.$it.communicationStandardId` | `uuid`                  | `eq`     | `?filter=any(mainVersion.communicationStandardVersions,eq($it.communicationStandardId,"533d3fe3-bccc-405a-9904-4f516e892856"))`  |
|                                                                         |                         | `neq`    | `?filter=all(mainVersion.communicationStandardVersions,neq($it.communicationStandardId,"533d3fe3-bccc-405a-9904-4f516e892856"))` |
| `mainVersion.trustFrameworkVersions.$it.id`                             | `uuid`                  | `eq`     | `?filter=any(mainVersion.trustFrameworkVersions,eq($it.id,"533d3fe3-bccc-405a-9904-4f516e892856"))`                              |
|                                                                         |                         | `neq`    | `?filter=all(mainVersion.trustFrameworkVersions,neq($it.id,"533d3fe3-bccc-405a-9904-4f516e892856"))`                             |
| `mainVersion.trustFrameworkVersions.$it.trustFrameworkId`               | `uuid`                  | `eq`     | `?filter=any(mainVersion.trustFrameworkVersions,eq($it.trustFrameworkId,"533d3fe3-bccc-405a-9904-4f516e892856"))`                |
|                                                                         |                         | `neq`    | `?filter=all(mainVersion.trustFrameworkVersions,neq($it.trustFrameworkId,"533d3fe3-bccc-405a-9904-4f516e892856"))`               |
| `mainVersion.lastDeclarationOfConformity.requirementsVersion`           | `string`                | `eq`     | `?filter=eq(mainVersion.lastDeclarationOfConformity.requirementsVersion,"1.2.0")`                                                |
|                                                                         |                         | `neq`    | `?filter=neq(mainVersion.lastDeclarationOfConformity.requirementsVersion,"1.2.0")`                                               |
|                                                                         |                         | `has`    | `?filter=has(mainVersion.lastDeclarationOfConformity.requirementsVersion,"1.2")`                                                 |
|                                                                         |                         | `stw`    | `?filter=stw(mainVersion.lastDeclarationOfConformity.requirementsVersion,"1.2")`                                                 |
|                                                                         |                         | `enw`    | `?filter=enw(mainVersion.lastDeclarationOfConformity.requirementsVersion,"2.0")`                                                 |
|                                                                         |                         | `reg`    | `?filter=reg(mainVersion.lastDeclarationOfConformity.requirementsVersion,"^[a-zA-Z0-9 ]+$")`                                     |
| `mainVersion.lastDeclarationOfConformity.rankingLevel`                  | `ApiRankingLevel`       | `eq`     | `?filter=eq(mainVersion.lastDeclarationOfConformity.rankingLevel,"OPEN_API")`                                                    |
|                                                                         |                         | `neq`    | `?filter=neq(mainVersion.lastDeclarationOfConformity.rankingLevel,"OPEN_API")`                                                   |
| `createTime`                                                            | `date-time`             | `eq`     | `?filter=eq(createTime,"2024-03-16T14:15:30.500Z")`                                                                              |
|                                                                         |                         | `neq`    | `?filter=neq(createTime,"2024-03-16T14:15:30.500Z")`                                                                             |
|                                                                         |                         | `gt`     | `?filter=gt(createTime,"2024-03-16T14:15:30.500Z")`                                                                              |
|                                                                         |                         | `gte`    | `?filter=gte(createTime,"2024-03-16T14:15:30.500Z")`                                                                             |
|                                                                         |                         | `lt`     | `?filter=lt(createTime,"2024-03-16T14:15:30.500Z")`                                                                              |
|                                                                         |                         | `lte`    | `?filter=lte(createTime,"2024-03-16T14:15:30.500Z")`                                                                             |
| `updateTime`                                                            | `date-time`             | `eq`     | `?filter=eq(updateTime,"2024-03-16T14:15:30.500Z")`                                                                              |
|                                                                         |                         | `neq`    | `?filter=neq(updateTime,"2024-03-16T14:15:30.500Z")`                                                                             |
|                                                                         |                         | `gt`     | `?filter=gt(updateTime,"2024-03-16T14:15:30.500Z")`                                                                              |
|                                                                         |                         | `gte`    | `?filter=gte(updateTime,"2024-03-16T14:15:30.500Z")`                                                                             |
|                                                                         |                         | `lt`     | `?filter=lt(updateTime,"2024-03-16T14:15:30.500Z")`                                                                              |
|                                                                         |                         | `lte`    | `?filter=lte(updateTime,"2024-03-16T14:15:30.500Z")`                                                                             |

</details>