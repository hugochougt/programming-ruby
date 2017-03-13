
类中的所有方法默认为 public。

*BasicObject* is the root class of our hierarchy of classes.

Modules are a way of grouping together methods, classes, and constants.

Module constants （模块常量）命名规范：第一个为大写字母。惯例是全大写，用下划线分隔。

Scope resolution operator: `::`，即使用模块的方法或常量在模块名后加 `::` 操作符。

For starters, remember how instance variables work in Ruby: the first mention of an @-prefixed variable creates the instance variable *in the current object*, **self**.

Resolving ambiguous method names: Ruby looks first in the immediate class of an object, then in the mixins included into the class and then in superclasses and their mixins. If a class has multiple modules mixed in, the last one included is searched first.
