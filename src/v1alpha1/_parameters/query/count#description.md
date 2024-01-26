The `count` query string parameter defines whether to provide a count of the total number of results.

<details>
<summary>Details</summary>

To request a count, use:

```
?count=true
```

The count will be returned in the `Total-Count` header, for example:

```
200 OK
Total-Count: 78
```

*Note that when the `filter` query string parameter is set, the total number of results returned in the `Total-Count`
header reflects the filtered result set.*

</details>