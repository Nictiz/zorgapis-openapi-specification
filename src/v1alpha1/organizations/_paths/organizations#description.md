Returns a list of organizations.

<details>
<summary>Details</summary>

## Sort expressions

The following table lists the field names and directions you can use in a sort expression.

| Field          | Type        | Direction | Example                    |
|----------------|-------------|-----------|----------------------------|
| `id`           | `uuid`      | `asc`     | `?sort=asc(id)`            |
|                |             | `desc`    | `?sort=desc(id)`           |
| `name`         | `string`    | `asc`     | `?sort=asc(name)`          |
|                |             | `desc`    | `?sort=desc(name)`         |
| `address.city` | `string`    | `asc`     | `?sort=asc(address.city)`  |
|                |             | `desc`    | `?sort=desc(address.city)` |
| `createTime`   | `date-time` | `asc`     | `?sort=asc(createTime)`    |
|                |             | `desc`    | `?sort=desc(createTime)`   |
| `updateTime`   | `date-time` | `asc`     | `?sort=asc(updateTime)`    |
|                |             | `desc`    | `?sort=desc(updateTime)`   |

### Default sort expression

If the `sort` parameter is omitted, the default sort expression is used:  

```
?sort=asc(name)
```

This causes the results to be sorted by `name` in ascending order (from A to Z).

## Filter expressions

The following table lists the field names and operators you can use in a filter expression.

| Field                | Type        | Operator | Example                                                    |
|----------------------|-------------|----------|------------------------------------------------------------|
| `id`                 | `uuid`      | `eq`     | `?filter=eq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`    |
|                      |             | `neq`    | `?filter=neq(id,"533d3fe3-bccc-405a-9904-4f516e892856")`   |
| `name`               | `string`    | `eq`     | `?filter=eq(name,"Nictiz")`                                |
|                      |             | `neq`    | `?filter=neq(name,"Nictiz")`                               |
|                      |             | `has`    | `?filter=has(name,"Nic")`                                  |
|                      |             | `stw`    | `?filter=stw(name,"Nic")`                                  |
|                      |             | `enw`    | `?filter=enw(name,"tiz")`                                  |
|                      |             | `reg`    | `?filter=reg(name,"^[a-zA-Z0-9 ]+$")`                      |
| `address.street`     | `string`    | `eq`     | `?filter=eq(address.street,"Oude Middenweg")`              |
|                      |             | `neq`    | `?filter=neq(address.street,"Oude Middenweg")`             |
|                      |             | `has`    | `?filter=has(address.street,"Oude")`                       |
|                      |             | `stw`    | `?filter=stw(address.street,"Oude")`                       |
|                      |             | `enw`    | `?filter=enw(address.street,"Middenweg")`                  |
|                      |             | `reg`    | `?filter=reg(address.street,"^[a-zA-Z ]+$")`               |
| `address.postalCode` | `string`    | `eq`     | `?filter=eq(address.postalCode,"2491 AC")`                 |
|                      |             | `neq`    | `?filter=neq(address.postalCode,"2491 AC")`                |
|                      |             | `has`    | `?filter=has(address.postalCode,"2491")`                   |
|                      |             | `stw`    | `?filter=stw(address.postalCode,"2491")`                   |
|                      |             | `enw`    | `?filter=enw(address.postalCode,"AC")`                     |
|                      |             | `reg`    | `?filter=reg(address.postalCode,"^(\d{4})\s*([A-Z]{2})$")` |
| `address.city`       | `string`    | `eq`     | `?filter=eq(address.city,"The Hague")`                     |
|                      |             | `neq`    | `?filter=neq(address.city,"The Hague")`                    |
|                      |             | `has`    | `?filter=has(address.city,"The")`                          |
|                      |             | `stw`    | `?filter=stw(address.city,"The")`                          |
|                      |             | `enw`    | `?filter=enw(address.city,"Hague")`                        |
|                      |             | `reg`    | `?filter=reg(address.city,"^[a-zA-Z ]+$")`                 |
| `address.country`    | `Country`   | `eq`     | `?filter=eq(address.country,"NL")`                         |
|                      |             | `neq`    | `?filter=neq(address.country,"NL")`                        |
| `createTime`         | `date-time` | `eq`     | `?filter=eq(createTime,"2024-03-16T14:15:30.500Z")`        |
|                      |             | `neq`    | `?filter=neq(createTime,"2024-03-16T14:15:30.500Z")`       |
|                      |             | `gt`     | `?filter=gt(createTime,"2024-03-16T14:15:30.500Z")`        |
|                      |             | `gte`    | `?filter=gte(createTime,"2024-03-16T14:15:30.500Z")`       |
|                      |             | `lt`     | `?filter=lt(createTime,"2024-03-16T14:15:30.500Z")`        |
|                      |             | `lte`    | `?filter=lte(createTime,"2024-03-16T14:15:30.500Z")`       |
| `updateTime`         | `date-time` | `eq`     | `?filter=eq(updateTime,"2024-03-16T14:15:30.500Z")`        |
|                      |             | `neq`    | `?filter=neq(updateTime,"2024-03-16T14:15:30.500Z")`       |
|                      |             | `gt`     | `?filter=gt(updateTime,"2024-03-16T14:15:30.500Z")`        |
|                      |             | `gte`    | `?filter=gte(updateTime,"2024-03-16T14:15:30.500Z")`       |
|                      |             | `lt`     | `?filter=lt(updateTime,"2024-03-16T14:15:30.500Z")`        |
|                      |             | `lte`    | `?filter=lte(updateTime,"2024-03-16T14:15:30.500Z")`       |

</details>