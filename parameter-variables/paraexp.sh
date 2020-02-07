#!/bin/bash
#
#At its most basic, parameter expansion substitutes the value of the variable when it is preceded by
#a dollar sign ($). The variable may be enclosed in braces (${var}), and if the variable is a positional
#parameter greater than 9, the braces must be used. You can use three other forms of expansion
#within the braces: Bourne, POSIX, and shell specific.
#The original Bourne shell parameter expansions tested whether the variable was set or empty,
#and acted on the results of that test. The KornShell added expansions to return the length of the
#variable's contents, and to remove the beginning or end of the value if it matched a pattern;
#these have been incorporated into the POSIX standard. KornShell 93 (ksh93) added the search-
#and-replace and substring capabilities that have also been included in bash.
#

#bash exclusive


# 1) use of ${var:-DEFAULT}, is the var is unset or null the value been substitued 
#    after the colon in case of DEFAULT

#unset case
var=
echo ${var:-default-value}

#set case

var=explicit
echo ${var:-default-value}

# 2) Without the colon, the variable must be unset, not just null, for DEFAULT to be used (the result
#    of the variable expansion is surrounded by slashes):

var=
echo /${var-default-value}/

unset var
echo /${var-default-value}/

# 3) Use of ${var:=default-value} this will assign a value to the variable

var=
echo ${var:=defult-value}
echo ${var:=notdefult-value} 

# 4) ${var:+VALUE}
#This expansion (which was not in the very first Bourne shell) is the opposite of the previous
#two. If var is not null (or, without the colon, if it is set), VALUE is used. In the first example, var is
#unset, so the variable expands to an empty string, with or without the colon:
unset var
echo /${var:+X}/
echo /${var+X}/

#In the next example, var is set but null. With the colon, the test is for a non-null string, so X is
#not printed. Without it, X is printed, because the test is for whether the variable is set.
var=
echo /${var:+X}/
echo /${var+X}/

#Finally, when the variable is set and not null, VALUE is used, with or without the colon:
var=A
echo /${var:+X}/
echo /${var+X}/

# 5) ${var?MESSAGE}, if the variable is unset bash is not interactive(as in case of script)

#unset var
#echo ${var?NO value supplied}								# commented for continue script execution

# 6) ${#var}, to determine the length of the variable.

var=thisisalongstring
echo length of the var  ${#var}

# 7) ${var%PATTERN}--Remove the Shortest Match from the End
var=usr/local/bin/crafty
echo "${var%/*}"


# 8) ${var%%PATTERN}--Remove the Longest Match from the End

var=usr/local/bin/crafty
echo "${var%%/*}"

# 9) ${var#PATTERN}--Remove the Shortest Match from the Beginning
var=usr/local/bin/crafty
echo "${var#*/}"

# 10) ${var##PATTERN}--Remove the Longest Match from the Beginning
var=usr/local/bin/crafty
echo "${var##*/}"

#Combining Expansions
#The result of one expansion can be used as the PATTERN in another expansion to get, for exam-
#ple, the first or last character of a string:
var=abcdef
echo ${var%${var#?}}
echo ${var#${var%?}}

