Two aspects to organization:

 *  how do you prevent different things with the same name from clashing?
 *  how do you conveniently organize the source files in your project?

## Namespaces

使用 class 和 module 来解决代码的命名冲突。习惯上使用 `::` 作为常量的分割符，使用 `.` 作为方法的分割符。Ruby's *Math* module is a good example.

In Ruby, the names of classes and modules are themselves just constants. The name that you use for a class, such as `String`, is really just a Ruby constant containing the object representing that class.

## Organizing Your Source

组织代码需要回答两个问题：

 *  how do we split our source code into separate files
 *  where in the file system do we put those file

Project structure example:

    anagram/                        <- top-level
          bin/                      <- command-line interface goes here
              anagram               <- no `.rb` extension, because that would be unusual in a command
          lib/                      <- library files go here
              anagram/              <- in `module Anagram`
                  finder.rb
                  options.rb
                  runner.rb
          test/                     <- test files go here
              ... various test files

Run program from the command line:

    $ ruby -I lib bin/anagram [arguments...]

## Distrubuting and Installing Your Code
