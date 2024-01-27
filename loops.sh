#!/bin/bash
#
set -x

a=10
b=20

#IF LOOP
if [ $a > $b ] ; then
  echo "a is greater than b"
else
  echo "b is greater than a"
fi

#ELSE IF LOOP
if [ $a > $b ]; then
  echo "a is greater than b"
elif [ $a < $b ]; then
  echo "b is greater than a"
else
  echo "a is equal to b"
fi

echo "*************************************"
#FOR LOOP - to print 1 to 10 one by one
for i in {1..10}
 do
  echo $i
done

echo "*************************************"
#FOR LOOP - to print all the file in current dir one by one
for file in $(ls)
 do
  echo $file
done

echo "*************************************"
#Check if file exists
###################################################################
if [ -e $file_path ]
  then
    echo "file exists"
else
    echo "file is not present"
    touch $file_path
fi


#Check if files are executable
#####################################################################
if [ -x $file_path ]
  then
    echo "you have executable permissions"
else
    echo "set permissions man!!!!!"
fi


#Print all that a variable contains line by line
######################################################################
user="man bear pig dog cat sheep"
for i in $user
 do
  echo $i
done
