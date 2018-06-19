#!/bin/bash

# This examples show how to unset a variable that means
# free up the memory location of a particular variable.
# "unset" is a special command that will unset the value from 
# the variable.
# Syntax : unset $variable_name

echo "uninitialized variable foo (blank rep zero value)  $foo"

# Assign value to foo
foo="Hello World!"
echo $foo
# Unset the variable foo
unset foo
echo "unset variable foo $foo"

# *** Alternative way
# Assign null string to variable 

foo_alt="hello"
foo_alt=
echo $foo_alt