In Ruby, just about everything is an expression. So perhaps less obvious, things that are normally statements in C or Java are expresisons in Ruby.

Ruby **没有** `++` 和 `--` 两个操作符。

### Boolean Expressions

Any value that is not `nil` or the constant `false` is *true*.

其余讲了 if, while, unless, for, break, next, redo 等的用法。

### Common Comparison operators

|Operator|Meaning|
|:------:|:-----:|
|`==`|Test for equal value.|
|`===`|Used to compare each of the items with the target in the *when* clause of a *case* statement.|
|`eql?`|True if the receiver and argument have both the same type and equal values. `1 == 1.0` returns *ture*, but `1.eql?(1.0)` is *false*.|
|`equal?`|True if the reveiver and argument have the same object ID.|

