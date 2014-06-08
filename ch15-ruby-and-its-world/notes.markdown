
## Command-Line-Arguments

A Ruby command lien consists of three parts: options to the Ruby interpreter, optionally the name of a program to run, and optionally a set of arguments for that program:

    $ ruby <options> <-> <programfile> <arguments>*

## Argument Processing: ARGV and ARGF

Any command-line arguments after the program filename are available to your Ruby program in the global array `ARGV`.

**NOTE**: `ARGV[0]` is the first argument to the program, not the program name. `$0` (aka `$PROGRAM_NAME`) is the name of the current program. All the values in ARGV are string.

## Where Ruby Finds Its Libraries

`RUBYLIB` or command-line argument `-l`
