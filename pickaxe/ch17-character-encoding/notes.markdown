
Think about why we need to separate the encodings of source files, variables, and I/O streams.

## Source Files

First and foremost, there's a simple rule: if you only use 7-bit ASCII characters in your source, then the source file encoding is irrelevant.

声明一个 Ruby source file 的编码：如果文件的第一行（或者第二行，如果第一行是 a `#!` shebang line）是注释，Ruby 会查找 *coding:* 的字符串，如果找到的话就会其后的字符串声明（case-insensitive）作为文件的编码。例：

```Ruby
# coding: utf-8

or

#!/usr/local/bin/ruby
# coding: ISO-8859-1
```

The special constant `__ENCODING__` returns the encoding of the current source file.

All encoding directive does is tell Ruby how to interpret the characters in the file and what encoding to use on literl strings and regular expressions. Ruby will never change the actual bytes in a source file when reading them in.
