
匹配符：`=~`，返回第一次匹配成功的字符串的位置，如果没有匹配成功，则返回 *nil*。

```ruby
/cat/ =~ "dog and cat" # => 8
"catch" =~ /cat/       # => 0
"CAT" =~               # => nil
```

does not match operator: `!~`

创建 Regexp 对象的另外两个方法：`Regexp.new` 和 `%r{...}`

Regex options:

 *  `i` - Case insensitive
 *  `o` - Substitute once
 *  `m` - Multiline mode 即点号匹配换行符
 *  `x` - Extended mode 宽松模式
