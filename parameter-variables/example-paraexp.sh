#!/bin/bash

for f in apple orange graps rasberry mango
do
	list=$list,$f
done

printf "current list is %s\n" $list # note the result, there is leading "," character on the list

list=	# simulate the situation where initial list is null
for f in apple orange graps rasberry mango
do
	list=${list:+$list,}$f
done

printf "current list is %s\n" $list # note the result, there is leading "," character on the list
