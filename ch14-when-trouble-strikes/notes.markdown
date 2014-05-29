
## Ruby Debugger

To run the Ruby debugger, invokes the interpreter with the `-r debug` option, along with any other Ruby options and the name of script:

    $ ruby -r debug <debug-options> <programfile> <program-arguments>

## Interactive Ruby - irb

To launch irb at the command prompt:

    $ irb <irb-options> <ruby_script> <program-arguments>

irb is a great learning tool. It's very handy if you want to try an idea quickly and see whether it works.

## Editor Support

可以在 vi 里运行 Ruby 程序。`:%!ruby` 会 *replace* the program text with its output，`:w !ruby` displays the output without affecting the buffer。
