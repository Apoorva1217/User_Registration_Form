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

#enter a valid email
echo "Enter the Email ID:"
read email

emailpatt="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+[.]+([a-zA-Z]{2,4})+[.]*([a-zA-Z]{2})*$"

if [[ $email =~ $emailpatt ]]
then
        echo "Valid Email ID"
else
        echo "Invalid Email ID"
fi
