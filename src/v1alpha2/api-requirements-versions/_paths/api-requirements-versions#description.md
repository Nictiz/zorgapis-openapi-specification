Returns a list of API requirements versions.

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
| `publishTime`       | `date-time` | `asc`     | `?sort=asc(publishTime)`        |
|                     |             | `desc`    | `?sort=desc(publishTime)`       |
| `semVer.major`      | `integer`   | `asc`     | `?sort=asc(semVer.major)`       |
|                     |             | `desc`    | `?sort=desc(semVer.major)`      |
| `semVer.minor`      | `integer`   | `asc`     | `?sort=asc(semVer.minor)`       |
|                     |             | `desc`    | `?sort=desc(semVer.minor)`      |
| `semVer.patch`      | `integer`   | `asc`     | `?sort=asc(semVer.patch)`       |
|                     |             | `desc`    | `?sort=desc(semVer.patch)`      |
| `semVer.preRelease` | `string`    | `asc`     | `?sort=asc(semVer.preRelease)`  |
|                     |             | `desc`    | `?sort=desc(semVer.preRelease)` |
| `semVer.build`      | `string`    | `asc`     | `?sort=asc(semVer.build)`       |
|                     |             | `desc`    | `?sort=desc(semVer.build)`      |
| `createTime`        | `date-time` | `asc`     | `?sort=asc(createTime)`         |
|                     |             | `desc`    | `?sort=desc(createTime)`        |
| `updateTime`        | `date-time` | `asc`     | `?sort=asc(updateTime)`         |
|                     |             | `desc`    | `?sort=desc(updateTime)`        |

### Default sort expression

If the `sort` parameter is omitted, the default sort expression is used:

```
?sort=desc(publishTime)
```

This causes results to be sorted by `publishTime` in descending order (from most recent to oldest).

## Filter expressions

The following table lists the field names and operators you can use in a filter expression.

| Field               | Type                    | Operator | Example                                                  |
|---------------------|-------------------------|----------|----------------------------------------------------------|
| `id`                | `uuid`                  | `eq`     | `?filter=eq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`  |
|                     |                         | `neq`    | `?filter=neq(id,"533d3fe3-bccc-405a-9904-4f516e892856")` |
| `name`              | `string`                | `eq`     | `?filter=eq(name,"1.2.0")`                               |
|                     |                         | `neq`    | `?filter=neq(name,"1.2.0")`                              |
|                     |                         | `has`    | `?filter=has(name,"1.2")`                                |
|                     |                         | `stw`    | `?filter=stw(name,"1.2")`                                |
|                     |                         | `enw`    | `?filter=enw(name,"2.0")`                                |
|                     |                         | `reg`    | `?filter=reg(name,"^[a-zA-Z0-9 ]+$")`                    |
| `publishTime`       | `date-time`             | `eq`     | `?filter=eq(publishTime,"2024-03-16T14:15:30.500Z")`     |
|                     |                         | `neq`    | `?filter=neq(publishTime,"2024-03-16T14:15:30.500Z")`    |
|                     |                         | `gt`     | `?filter=gt(publishTime,"2024-03-16T14:15:30.500Z")`     |
|                     |                         | `gte`    | `?filter=gte(publishTime,"2024-03-16T14:15:30.500Z")`    |
|                     |                         | `lt`     | `?filter=lt(publishTime,"2024-03-16T14:15:30.500Z")`     |
|                     |                         | `lte`    | `?filter=lte(publishTime,"2024-03-16T14:15:30.500Z")`    |
| `semVer.major`      | `integer`               | `eq`     | `?filter=eq(semVer.major,1)`                             |
|                     |                         | `neq`    | `?filter=neq(semVer.major,1)`                            |
|                     |                         | `gt`     | `?filter=gt(semVer.major,1)`                             |
|                     |                         | `gte`    | `?filter=gte(semVer.major,1)`                            |
|                     |                         | `lt`     | `?filter=lt(semVer.major,1)`                             |
|                     |                         | `lte`    | `?filter=lte(semVer.major,1)`                            |
| `semVer.minor`      | `integer`               | `eq`     | `?filter=eq(semVer.minor,2)`                             |
|                     |                         | `neq`    | `?filter=neq(semVer.minor,2)`                            |
|                     |                         | `gt`     | `?filter=gt(semVer.minor,2)`                             |
|                     |                         | `gte`    | `?filter=gte(semVer.minor,2)`                            |
|                     |                         | `lt`     | `?filter=lt(semVer.minor,2)`                             |
|                     |                         | `lte`    | `?filter=lte(semVer.minor,2)`                            |
| `semVer.patch`      | `integer`               | `eq`     | `?filter=eq(semVer.patch,0)`                             |
|                     |                         | `neq`    | `?filter=neq(semVer.patch,0)`                            |
|                     |                         | `gt`     | `?filter=gt(semVer.patch,0)`                             |
|                     |                         | `gte`    | `?filter=gte(semVer.patch,0)`                            |
|                     |                         | `lt`     | `?filter=lt(semVer.patch,0)`                             |
|                     |                         | `lte`    | `?filter=lte(semVer.patch,0)`                            |
| `semVer.preRelease` | `string`                | `eq`     | `?filter=eq(semVer.preRelease,"beta")`                   |
|                     |                         | `neq`    | `?filter=neq(semVer.preRelease,"beta")`                  |
|                     |                         | `has`    | `?filter=has(semVer.preRelease,"be")`                    |
|                     |                         | `stw`    | `?filter=stw(semVer.preRelease,"be")`                    |
|                     |                         | `enw`    | `?filter=enw(semVer.preRelease,"ta")`                    |
|                     |                         | `reg`    | `?filter=reg(semVer.preRelease,"^[a-zA-Z0-9 ]+$")`       |
| `semVer.build`      | `string`                | `eq`     | `?filter=eq(semVer.build,"exp.sha.5114f85")`             |
|                     |                         | `neq`    | `?filter=neq(semVer.build,"exp.sha.5114f85")`            |
|                     |                         | `has`    | `?filter=has(semVer.build,"exp.sha")`                    |
|                     |                         | `stw`    | `?filter=stw(semVer.build,"exp.sha")`                    |
|                     |                         | `enw`    | `?filter=enw(semVer.build,"5114f85")`                    |
|                     |                         | `reg`    | `?filter=reg(semVer.build,"^[a-zA-Z0-9 ]+$")`            |
| `lifecycleState`    | `ProductLifecycleState` | `eq`     | `?filter=eq(lifecycleState,"PUBLISHED")`                 |
|                     |                         | `neq`    | `?filter=neq(lifecycleState,"PUBLISHED")`                |
| `createTime`        | `date-time`             | `eq`     | `?filter=eq(createTime,"2024-03-16T14:15:30.500Z")`      |
|                     |                         | `neq`    | `?filter=neq(createTime,"2024-03-16T14:15:30.500Z")`     |
|                     |                         | `gt`     | `?filter=gt(createTime,"2024-03-16T14:15:30.500Z")`      |
|                     |                         | `gte`    | `?filter=gte(createTime,"2024-03-16T14:15:30.500Z")`     |
|                     |                         | `lt`     | `?filter=lt(createTime,"2024-03-16T14:15:30.500Z")`      |
|                     |                         | `lte`    | `?filter=lte(createTime,"2024-03-16T14:15:30.500Z")`     |
| `updateTime`        | `date-time`             | `eq`     | `?filter=eq(updateTime,"2024-03-16T14:15:30.500Z")`      |
|                     |                         | `neq`    | `?filter=neq(updateTime,"2024-03-16T14:15:30.500Z")`     |
|                     |                         | `gt`     | `?filter=gt(updateTime,"2024-03-16T14:15:30.500Z")`      |
|                     |                         | `gte`    | `?filter=gte(updateTime,"2024-03-16T14:15:30.500Z")`     |
|                     |                         | `lt`     | `?filter=lt(updateTime,"2024-03-16T14:15:30.500Z")`      |
|                     |                         | `lte`    | `?filter=lte(updateTime,"2024-03-16T14:15:30.500Z")`     |

</details>