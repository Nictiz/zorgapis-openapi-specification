The `sort` query string parameter sorts the data returned from your request.

<details>
<summary>Details</summary>

## Sort syntax

A single sort expression uses the form:

```
direction(field)
```

In this syntax:

- *direction* - The sort direction to use
- *field* - The name of the field to sort by
    - Nested fields can be referenced using dot notation (`field.nested`) or bracket notation (`field["nested"]`)

## Sort directions

- `asc` - Ascending (smallest to largest)
    - *e.g. 1 to 100, A to Z, oldest to newest, false to true, not null to null*
- `desc` - Descending (largest to smallest)
    - *e.g. 100 to 1, Z to A, newest to oldest, true to false, null to not null*

## Functions

Sort functionality can be expanded using functions. These functions help to sort specific data types. For example,
they allow to sort on the `year` component of a `date-time` type field.

Functions can be applied to the `field` component of a sort expression, like so:

```
direction(function(field))
```

### Sort functions

| Function      | Description                                            | Input type  | Output type | Example input                             | Example output |
|---------------|--------------------------------------------------------|-------------|-------------|-------------------------------------------|----------------|
| `year`        | Returns the year component of a date value             | `date-time` | `integer`   | `year("2024-03-16T14:15:30.500Z")`        | `2024`         |
| `month`       | Returns the month component of a date value            | `date-time` | `integer`   | `month("2024-03-16T14:15:30.500Z")`       | `3`            |
| `day`         | Returns the day of the month component of a date value | `date-time` | `integer`   | `day("2024-03-16T14:15:30.500Z")`         | `16`           |
| `hour`        | Returns the hour component of a datetime value         | `date-time` | `integer`   | `hour("2024-03-16T14:15:30.500Z")`        | `14`           |
| `minute`      | Returns the minute component of a datetime value       | `date-time` | `integer`   | `minute("2024-03-16T14:15:30.500Z")`      | `15`           |
| `second`      | Returns the second component of a datetime value       | `date-time` | `integer`   | `second("2024-03-16T14:15:30.500Z")`      | `30`           |
| `millisecond` | Returns the millisecond component of a datetime value  | `date-time` | `integer`   | `millisecond("2024-03-16T14:15:30.500Z")` | `500`          |
| `floor`       | Rounds a number down to the nearest integer            | `float`     | `integer`   | `floor(25.75)`                            | `25`           |
|               |                                                        | `double`    |             |                                           |                |
| `ceiling`     | Rounds a number up to the nearest integer              | `float`     | `integer`   | `ceiling(25.75)`                          | `26`           |
|               |                                                        | `double`    |             |                                           |                |
| `round`       | Rounds a number to the nearest integer                 | `float`     | `integer`   | `round(25.75)`                            | `26`           |
|               |                                                        | `double`    |             |                                           |                |
| `lower`       | Converts a string to lowercase                         | `string`    | `string`    | `lower("Nictiz")`                         | `"nictiz"`     |
| `upper`       | Converts a string to uppercase                         | `string`    | `string`    | `upper("Nictiz")`                         | `"NICTIZ"`     |

## Combining sort expressions

Sort expressions can be combined using a comma (`,`).

Sort expressions are evaluated from left to right, for example:

```
?sort=asc(name),asc(createTime)
```

Causes the results to be sorted first by `name` in ascending order (from A to Z), and then by `createTime` in ascending
order (from oldest to newest).

</details>