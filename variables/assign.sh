
#!/bin/bash

# Explicit definition.
#   > Syntax : variable_name=value.
#    >> No spaces are permittd around the equal sign.


foo=date

# Read from stdin
#   > Syntax : read variable_name {...} , read a b c
#    {read is special program read value from stdin and store it.}

# For interaction some prompt here
echo "Enter a text to terminal"
read foo_read

# Command substitution
#   >1 Syntax : variable_name='command' | command
#   >2 Syntax : variable_name=$(command | values)

foo_sub='date'
foo_sub2=$(date)

# Display the content from the variables

#   > accessing value within the variable use doller sign as perfix
#   > like below

$foo
echo "Value is read from the terminal : $foo_read"
$foo_sub
