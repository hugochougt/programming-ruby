
> Metaprogramming is writing code that manipulates language constructs at runtime.

一个对象的实例变量存在于对象本身之中，而一个对象的方法存在于对象自身的类当中。这就是同一个类的对象共享同样的方法，但不共享实例变量的原因。

Here is possibly the most important thing you'll ever learn about Ruby object model:

  > classes themselves are nothing but objects.

在 Ruby 中，类和模块这两个概念实在是太接近了，完全可以用任意一个来代表另一个。

如何区别使用？
如果你希望把自己的代码包含（include）到别的代码中，就应该使用模块；如果你希望某段代码被实例化或者继承，就应该使用类。
