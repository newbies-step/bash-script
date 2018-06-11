
#!/bin/bash
# This script demonstrate use of shift keyword
# but if you are dealing with many more than that it soon becomes cumber-
# some to have to explicitly say “$10, $11, $12, $13,” and so on.
# ​you really want to say “get me the next one.” The shift builtin command
# moves everything along by one, dropping $1 , then $2 , then $3 , and so on.

echo "I was called with $# parameters."
count=1
while [ "$#" -ge "1" ]; do
    echo "Parameter number $count is : $1"
    let count=$count+1
    shift
done
