Returns a list of organization memberships.

<details>
<summary>Details</summary>

## Sort expressions

The following table lists the field names and directions you can use in a sort expression.

| Field          | Type        | Direction | Example                    |
|----------------|-------------|-----------|----------------------------|
| `id`           | `uuid`      | `asc`     | `?sort=asc(id)`            |
|                |             | `desc`    | `?sort=desc(id)`           |
| `createTime`   | `date-time` | `asc`     | `?sort=asc(createTime)`    |
|                |             | `desc`    | `?sort=desc(createTime)`   |
| `updateTime`   | `date-time` | `asc`     | `?sort=asc(updateTime)`    |
|                |             | `desc`    | `?sort=desc(updateTime)`   |

### Default sort expression

If the `sort` parameter is omitted, the default sort expression is used:

```
?sort=desc(createTime)
```

This causes results to be sorted by `createTime` in descending order (from most recent to oldest).

## Filter expressions

The following table lists the field names and operators you can use in a filter expression.

| Field          | Type               | Operator | Example                                                      |
|----------------|--------------------|----------|--------------------------------------------------------------|
| `id`           | `uuid`             | `eq`     | `?filter=eq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`      |
|                |                    | `neq`    | `?filter=neq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`     |
| `userId`       | `uuid`             | `eq`     | `?filter=eq(userId,"533d3fe3-bccc-405a-9904-4f516e892856")`  |
|                |                    | `neq`    | `?filter=neq(userId,"533d3fe3-bccc-405a-9904-4f516e892856")` |
| `createTime`   | `date-time`        | `eq`     | `?filter=eq(createTime,"2024-03-16T14:15:30.500Z")`          |
|                |                    | `neq`    | `?filter=neq(createTime,"2024-03-16T14:15:30.500Z")`         |
|                |                    | `gt`     | `?filter=gt(createTime,"2024-03-16T14:15:30.500Z")`          |
|                |                    | `gte`    | `?filter=gte(createTime,"2024-03-16T14:15:30.500Z")`         |
|                |                    | `lt`     | `?filter=lt(createTime,"2024-03-16T14:15:30.500Z")`          |
|                |                    | `lte`    | `?filter=lte(createTime,"2024-03-16T14:15:30.500Z")`         |
| `updateTime`   | `date-time`        | `eq`     | `?filter=eq(updateTime,"2024-03-16T14:15:30.500Z")`          |
|                |                    | `neq`    | `?filter=neq(updateTime,"2024-03-16T14:15:30.500Z")`         |
|                |                    | `gt`     | `?filter=gt(updateTime,"2024-03-16T14:15:30.500Z")`          |
|                |                    | `gte`    | `?filter=gte(updateTime,"2024-03-16T14:15:30.500Z")`         |
|                |                    | `lt`     | `?filter=lt(updateTime,"2024-03-16T14:15:30.500Z")`          |
|                |                    | `lte`    | `?filter=lte(updateTime,"2024-03-16T14:15:30.500Z")`         |

</details>