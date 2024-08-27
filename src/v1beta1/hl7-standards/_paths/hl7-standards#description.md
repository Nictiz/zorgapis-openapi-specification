Returns a list of HL7 standards.

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

| Field                        | Type                    | Operator | Example                                                              |
|------------------------------|-------------------------|----------|----------------------------------------------------------------------|
| `id`                         | `uuid`                  | `eq`     | `?filter=eq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`              |
|                              |                         | `neq`    | `?filter=neq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`             |
| `name`                       | `string`                | `eq`     | `?filter=eq(name,"Verzamelen Huisartsgegevens")`                     |
|                              |                         | `neq`    | `?filter=neq(name,"Verzamelen Huisartsgegevens")`                    |
|                              |                         | `has`    | `?filter=has(name,"Verzamelen")`                                     |
|                              |                         | `stw`    | `?filter=stw(name,"Verzamelen")`                                     |
|                              |                         | `enw`    | `?filter=enw(name,"Huisartsgegevens")`                               |
|                              |                         | `reg`    | `?filter=reg(name,"^[a-zA-Z0-9 ]+$")`                                |
| `description`                | `string`                | `eq`     | `?filter=eq(description,"Verzamelen Huisartsgegevens")`              |
|                              |                         | `neq`    | `?filter=neq(description,"Verzamelen Huisartsgegevens")`             |
|                              |                         | `has`    | `?filter=has(description,"Verzamelen")`                              |
|                              |                         | `stw`    | `?filter=stw(description,"Verzamelen")`                              |
|                              |                         | `enw`    | `?filter=enw(description,"Huisartsgegevens")`                        |
|                              |                         | `reg`    | `?filter=reg(description,"^[a-zA-Z0-9 ]+$")`                         |
| `organizationId`             | `uuid`                  | `eq`     | `?filter=eq(organizationId,"533d3fe3-bccc-405a-9904-4f516e892856")`  |
|                              |                         | `neq`    | `?filter=neq(organizationId,"533d3fe3-bccc-405a-9904-4f516e892856")` |
| `mainVersion.lifecycleState` | `ProductLifecycleState` | `eq`     | `?filter=eq(mainVersion.lifecycleState,"PUBLISHED")`                 |
|                              |                         | `neq`    | `?filter=neq(mainVersion.lifecycleState,"PUBLISHED")`                |
| `createTime`                 | `date-time`             | `eq`     | `?filter=eq(createTime,"2024-03-16T14:15:30.500Z")`                  |
|                              |                         | `neq`    | `?filter=neq(createTime,"2024-03-16T14:15:30.500Z")`                 |
|                              |                         | `gt`     | `?filter=gt(createTime,"2024-03-16T14:15:30.500Z")`                  |
|                              |                         | `gte`    | `?filter=gte(createTime,"2024-03-16T14:15:30.500Z")`                 |
|                              |                         | `lt`     | `?filter=lt(createTime,"2024-03-16T14:15:30.500Z")`                  |
|                              |                         | `lte`    | `?filter=lte(createTime,"2024-03-16T14:15:30.500Z")`                 |
| `updateTime`                 | `date-time`             | `eq`     | `?filter=eq(updateTime,"2024-03-16T14:15:30.500Z")`                  |
|                              |                         | `neq`    | `?filter=neq(updateTime,"2024-03-16T14:15:30.500Z")`                 |
|                              |                         | `gt`     | `?filter=gt(updateTime,"2024-03-16T14:15:30.500Z")`                  |
|                              |                         | `gte`    | `?filter=gte(updateTime,"2024-03-16T14:15:30.500Z")`                 |
|                              |                         | `lt`     | `?filter=lt(updateTime,"2024-03-16T14:15:30.500Z")`                  |
|                              |                         | `lte`    | `?filter=lte(updateTime,"2024-03-16T14:15:30.500Z")`                 |

</details>