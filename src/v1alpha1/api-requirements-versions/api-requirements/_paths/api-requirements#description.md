Returns a list of API requirements.

<details>
<summary>Details</summary>

## Sort expressions

The following table lists the field names and directions you can use in a sort expression.

| Field               | Type        | Direction | Example                         |
|---------------------|-------------|-----------|---------------------------------|
| `id`                | `uuid`      | `asc`     | `?sort=asc(id)`                 |
|                     |             | `desc`    | `?sort=desc(id)`                |
| `code`              | `string`    | `asc`     | `?sort=asc(code)`               |
|                     |             | `desc`    | `?sort=desc(code)`              |
| `createTime`        | `date-time` | `asc`     | `?sort=asc(createTime)`         |
|                     |             | `desc`    | `?sort=desc(createTime)`        |
| `updateTime`        | `date-time` | `asc`     | `?sort=asc(updateTime)`         |
|                     |             | `desc`    | `?sort=desc(updateTime)`        |

### Default sort expression

If the `sort` parameter is omitted, the default sort expression is used:

```
?sort=asc(code)
```

This causes results to be sorted by `code` in ascending order (from A to Z).

## Filter expressions

The following table lists the field names and operators you can use in a filter expression.

| Field                       | Type                      | Operator | Example                                                       |
|-----------------------------|---------------------------|----------|---------------------------------------------------------------|
| `id`                        | `uuid`                    | `eq`     | `?filter=eq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`       |
|                             |                           | `neq`    | `?filter=neq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`      |
| `code`                      | `string`                  | `eq`     | `?filter=eq(code,"SD001")`                                    |
|                             |                           | `neq`    | `?filter=neq(code,"SD001")`                                   |
|                             |                           | `has`    | `?filter=has(code,"SD0")`                                     |
|                             |                           | `stw`    | `?filter=stw(code,"SD0")`                                     |
|                             |                           | `enw`    | `?filter=enw(code,"001")`                                     |
|                             |                           | `reg`    | `?filter=reg(code,"^[a-zA-Z0-9 ]+$")`                         |
| `requirementLevel`          | `RequirementLevel`        | `eq`     | `?filter=eq(requirementLevel,"MUST")`                         |
|                             |                           | `neq`    | `?filter=neq(requirementLevel,"MUST")`                        |
| `category`                  | `ApiRequirementCategory`  | `eq`     | `?filter=eq(category,"API_SPECIFICATION_AND_DOCUMENTATION")`  |
|                             |                           | `neq`    | `?filter=neq(category,"API_SPECIFICATION_AND_DOCUMENTATION")` |
| `roles.$it`                 | `ApiRole`                 | `eq`     | `?filter=any(roles,eq($it,"API_SPECIFIER"))`                  |
|                             |                           | `neq`    | `?filter=all(roles,neq($it,"API_SPECIFIER"))`                 |
| `perspectiveTypes.$it`      | `ApiPerspectiveType`      | `eq`     | `?filter=any(perspectiveTypes,eq($it,"API_SPECIFICATION"))`   |
|                             |                           | `neq`    | `?filter=all(perspectiveTypes,neq($it,"API_SPECIFICATION"))`  |
| `architecturalStyles.$it`   | `ApiArchitecturalStyle`   | `eq`     | `?filter=any(architecturalStyles,eq($it,"REST"))`             |
|                             |                           | `neq`    | `?filter=all(architecturalStyles,neq($it,"REST"))`            |
| `standardizationLevels.$it` | `ApiStandardizationLevel` | `eq`     | `?filter=any(standardizationLevels,eq($it,"OPEN_API"))`       |
|                             |                           | `neq`    | `?filter=all(standardizationLevels,neq($it,"OPEN_API"))`      |
| `createTime`                | `date-time`               | `eq`     | `?filter=eq(createTime,"2024-03-16T14:15:30.500Z")`           |
|                             |                           | `neq`    | `?filter=neq(createTime,"2024-03-16T14:15:30.500Z")`          |
|                             |                           | `gt`     | `?filter=gt(createTime,"2024-03-16T14:15:30.500Z")`           |
|                             |                           | `gte`    | `?filter=gte(createTime,"2024-03-16T14:15:30.500Z")`          |
|                             |                           | `lt`     | `?filter=lt(createTime,"2024-03-16T14:15:30.500Z")`           |
|                             |                           | `lte`    | `?filter=lte(createTime,"2024-03-16T14:15:30.500Z")`          |
| `updateTime`                | `date-time`               | `eq`     | `?filter=eq(updateTime,"2024-03-16T14:15:30.500Z")`           |
|                             |                           | `neq`    | `?filter=neq(updateTime,"2024-03-16T14:15:30.500Z")`          |
|                             |                           | `gt`     | `?filter=gt(updateTime,"2024-03-16T14:15:30.500Z")`           |
|                             |                           | `gte`    | `?filter=gte(updateTime,"2024-03-16T14:15:30.500Z")`          |
|                             |                           | `lt`     | `?filter=lt(updateTime,"2024-03-16T14:15:30.500Z")`           |
|                             |                           | `lte`    | `?filter=lte(updateTime,"2024-03-16T14:15:30.500Z")`          |

### Examples

#### All `API_SPECIFICATION` `REST` requirements

```
?filter=and(any(perspectiveTypes,eq($it,"API_SPECIFICATION")),any(architecturalStyles,eq($it,"REST")))
```

</details>