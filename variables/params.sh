
#!/bin/bash

# When a shell script is called, it can be useful to pass arguments, 
# or parameters, to the script.
# Parameter is accessed via special variable $0 ... $9.
# here $0 is program itself and $1 to $9 is positional parameters.
# Another helpful variable is $# will return total number of params.
# After the ninth positional parameter such that $10 is $1 parameter 
# and followed by zero.

echo "The program name is $0"
echo "The first positional parameter is $1"
echo "The second positional parameter is $2"

