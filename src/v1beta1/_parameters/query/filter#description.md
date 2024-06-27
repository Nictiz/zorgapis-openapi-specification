The `filter` query string parameter restricts the data returned from your request.

<details>
<summary>Details</summary>

## Filter syntax

A single filter expression uses the form:

```
operator(field,value)
```

In this syntax:

- *operator* - The type of filter to use
- *field* - The name of the field to filter on
    - Nested fields can be referenced using dot notation (`field.nested`) or bracket notation (`field["nested"]`)
- *value* - The value that the field must be evaluated against

## Filter operators

| Operator | Description                    | Field type  | Example                                             |
|----------|--------------------------------|-------------|-----------------------------------------------------|
| `eq`     | Equal to value                 | `boolean`   | `eq(field,true)`                                    |
|          |                                | `number`    | `eq(field,1234)`                                    |
|          |                                | `string`    | `eq(field,"text")`                                  |
|          |                                | `date-time` | `eq(field,"2024-03-16T14:15:30.500Z")`              |
|          |                                | `uuid`      | `eq(field,"533d3fe3-bccc-405a-9904-4f516e892856")`  |
|          |                                | `null`      | `eq(field,null)`                                    |
| `neq`    | Not equal to value             | `boolean`   | `neq(field,true)`                                   |
|          |                                | `number`    | `neq(field,1234)`                                   |
|          |                                | `string`    | `neq(field,"text")`                                 |
|          |                                | `date-time` | `neq(field,"2024-03-16T14:15:30.500Z")`             |
|          |                                | `uuid`      | `neq(field,"533d3fe3-bccc-405a-9904-4f516e892856")` |
|          |                                | `null`      | `neq(field,null)`                                   |
| `gt`     | Greater than value             | `number`    | `gt(field,1234)`                                    |
|          |                                | `date-time` | `gt(field,"2024-03-16T14:15:30.500Z")`              |
| `gte`    | Greater than or equal to value | `number`    | `gte(field,1234)`                                   |
|          |                                | `date-time` | `gte(field,"2024-03-16T14:15:30.500Z")`             |
| `lt`     | Less than value                | `number`    | `lt(field,1234)`                                    |
|          |                                | `date-time` | `lt(field,"2024-03-16T14:15:30.500Z")`              |
| `lte`    | Less than or equal to value    | `number`    | `lte(field,1234)`                                   |
|          |                                | `date-time` | `lte(field,"2024-03-16T14:15:30.500Z")`             |
| `has`    | Contains substring             | `string`    | `has(field,"text")`                                 |
| `stw`    | Starts with string             | `string`    | `stw(field,"text")`                                 |
| `enw`    | Ends with string               | `string`    | `enw(field,"text")`                                 |
| `reg`    | Matches regular expression     | `string`    | `reg(field,"^[a-zA-Z0-9 ]+$")`                      |

### List operators

The `any` and `all` operators can be used to filter on list fields. These operators will filter the data returned to 
only include results where **any** or **all** items in given list return `true` for given filter expression.

A single list operator uses the form:

```
listOperator(listField,operator($it,value))
```

In this syntax:

- *listOperator* - The list operator to use
    - The `any` operator returns `true` if the filter expression is `true` for **at least one** item in the list
    - The `all` operator returns `true` if the filter expression is `true` for **every** item in the list
- *listField* - The name of the list field to filter on
- *operator* - The type of filter to use on the list items
- *$it* - Keyword that refers to each individual item of the list field
    - If the item is an `object`, you can reference nested fields like so: `$it.nestedField`
- *value* - The value that the list item must be evaluated against

The `operator` in a list operator can be seen as a lambda function, where it represents the body of a loop in a 
programming language with `$it` representing the current item of the list during iteration.

#### Examples

Any perspectiveType that is equal to "API_SPECIFICATION":

```
?filter=any(perspectiveTypes,eq($it,"API_SPECIFICATION"))
```

All versions have any url with a type that is equal to "FUNCTIONAL_DESIGN":

```
?filter=all(versions,any($it.urls,eq($it.type,"FUNCTIONAL_DESIGN")))
```

### `not` operator

The `not` operator evaluates to `true` if its sub-expression evaluates to `false`, and vice-versa.

It can be applied to any filter operator, like so:

```
not(operator(field,value))
```

## Filter values

There are a couple of important rules for filter values:

- **URL-reserved characters** - Characters such as `&` must be url-encoded in the usual way.
- **Value syntax** - Value syntax is similar to that of JSON:
    - `string` - Must be written with double quotes (for example: `"value"`)
        - `date-time` - Must be written as string
        - `enum` - Must be written as string
        - `uuid` - Must be written as string
    - `number` - Must be written as JSON `number`
    - `boolean` - Must be written as JSON `boolean`: either `true` or `false`
    - `null` - Must be written as JSON `null` literal
- **Regular expressions** - You can also use regular expressions in filter values using the `reg` operator. The syntax
  uses POSIX regular expressions (similar to Perl) and have these additional rules:
    - **Case sensitivity** - Regular expression matching is case-sensitive.
- **Date-time values** - For date-time values, use [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format (for
  example: `"2024-03-16T14:15:30.500Z"`).

## Functions

Filter functionality can be expanded using functions. These functions help to filter specific data types. For example,
they allow to filter on the `year` component of a `date-time` type field.

Functions can be applied to the `field` component of a filter expression, like so:

```
operator(function(field),value) 
```

### Filter functions

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

### Examples

Date is in the month of March:

```
?filter=eq(month(dateField),3)
```

## Combining filter expressions

Filter expressions can be combined using the `or` and `and` operators.

### Examples

Name is either ("Nictiz" `OR` "MedMij"):

```
?filter=or(eq(name,"Nictiz"),eq(name,"MedMij"))
```

Name does `NOT` end with "Mij":

```
?filter=not(enw(name,"Mij"))
```

</details>