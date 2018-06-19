
#!/bin/bash

# In Unix and Linux, every command returns a numeric code,
# between 0 and 255 — ​that is, 1 byte (although -1 wraps around
# to be the same as 255, and -2 becomes 254 and so on). This is a way of 
# indicating success or failure, and sometimes more detailed information, too.
# This is can be done by using a special variable $?.

# Example 
# grep return 1 for "no match" and 2 or above mean some kind of error occurred
# and 0 for success.

grep "Lorem" /tmp/foo.txt
echo "The grep command return code : " $?


