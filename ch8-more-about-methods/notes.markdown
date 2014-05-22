
## Defining a Method

A method is defined using the keyword `def`. Method names should begin with a lowercase letter or underscore, followed by letters, digits, and underscores.

A method name may end with one of *?*, *!*, or *=*. And ?, !, and = are the only "weird" characters allowed as method name suffixes.

### Variable-Length Argument Lists

Placing an asterisk before the name of the parameter after the "normal" parameters lets you pass in a variable number of arguments or capture multiple arguments into a single parameter.

Splat argument （译作变长参数，还是连接参数？） 可以放在方法参数表的任何位置，但表中最多只能有一个 splat argument。

### Block argument

如果方法最后参数有 `&` 前缀，Ruby 会假设其为 *Proc* 对象。
