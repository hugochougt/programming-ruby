
## The Exception Class

Information about an exception is encapsulated in an object of class **Exception** or one of class **Exception**'s children.

When you need to raise an exception, you can use one of the build-in Exception classes, or you can create one of your own. Make your own exceptions subclasses of **StandardError** or one of its children. If you don't, your exceptions won't be caught by defaule.

## Handling Exceptions

To do exception handling, we enclose the code that could raise an exception in a `begin`/`end` block and use one or more `rescue` clauses to tell Ruby the types of exceptions we want to handle.

If you write a *rescue* clause with no parameter list, the parameter defaults to *StandardError*.

## Tidying up

Sometimes you need to guarantee that some processing is done at the end of a block of code, regardless of whether an exception was raised. The `ensure` clause does just this. *ensure* goes after the last *rescue* clause and contains a chunk of code that will always be executed as the block terminates.

## Play It Again

Sometimes you may be able to correct the cause of an exception. In those cases, you can use the `retry` statement within a `rescue` clause to repeat the entire *begin*/*end* block.

注意，这样可能会造成死循环，所以要尝试若干次后 raise exception 的代码。

## Raising Exceptions

Three forms of raising exceptions:

```Ruby
raise
raise "bad mp3 encoding"
raise InterfaceException, "Keyboard failure", caller
```
## catch and throw
