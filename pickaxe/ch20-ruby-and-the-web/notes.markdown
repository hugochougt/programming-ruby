
## erb

| Expression | Description |
|:----------:|:-----------:|
| <% ruby code %> | This executes the Ruby code between the delimiters. |
| <%= ruby expression %> | This evaluates the Ruby expression and replaces the sequence with the expression's value. |
| <%# ruby code %> | The Ruby code between the delimiters is ignored (useful for testing). |
| % line of ruby code | A line that starts with a percent is assumed to contain just Ruby code. |

`<% ruby code %>` 和 `<%= ruby expression %>` 两者的区别在于，前者**执行**其中的代码，后者也会执行其中的代码，而且会把执行的结果**插入**模板中。
