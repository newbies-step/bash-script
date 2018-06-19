#!/bin/bash

# you can read multiple variables in one statement.
# This script reads the fi rst line from a data file 
# and assigns the words to the variables named.

# datafile is the file that contain 4 field values.

read field1 field2 field3 field4 < ../assets/datafile

echo "Value form field one : $field1"
echo "Value form field two : $field2"
echo "Value form field three : $field3"
echo "Value form field fou : $field4"