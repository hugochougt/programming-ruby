
The lack of static typing is not a problem when it comes to writing reliable applications.

 *  The static type systems don't really help that much in terms of program security (例如 Java 有 `ClassCastException`。Static typing 多数用于优化代码和帮助 IDE 给出提示)
 *  Dynamically typed variables actually add to your productivity in many ways

## Classes Aren't Types

Even in Java, the class is not always the type -- sometimes the type is a subset of the class, and sometimes objects implements multiple types.

In Ruby, **the type of an object is defined more by what that object can do**. This is *duck typing*.

## Coding like a Duck

**an object's type is determined by what it can do, not by its class**.

To check that a parameter can do what you need:

 *  result.respond_to?(:<<)
 *  song.respond_to?(:artist), song.respond_to?(:title)

## Standard Protocols and Coercions

类似类型转换的方法：

    to_int, to_str, to_ary, to_enum, to_hash, to_sym 等等

## Walk the Walk, Talk the Talk

Ultimately, though, duck typing isn't a set of rules; it's just a style of programming. Design your programs to balance paranoia and flexibility.
