#!/bin/bash -x

#enter a valid First Name
echo "Enter the First Name:"
read fname

fnamepatt="^[A-Z]{1}[a-z]{2,}$"

if [[ $fname =~ $fnamepatt ]]
then
       echo "Valid Fname"
else
       echo "Invalid"
fi

#enter a valid Last Name
echo "Enter the Last Name:"
read lname

lnamepatt="^[A-Z]{1}[a-z]{2,}$"

if [[ $lname =~ $lnamepatt ]]
then
        echo "Valid Lname"
else
        echo "Invalid"
fi
