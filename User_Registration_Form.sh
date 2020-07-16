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

#enter valid mobile number
echo "Enter your Mobile Number:"
read mob

mobpatt="^[0-9]{2}\s[0-9]{10}$"

if [[ $mob =~ $mobpatt ]]
then
       echo "Valid Mobile Number"
else
       echo "Invalid Mobile Number"
fi

#enter password
echo "Enter the Password:"
read password

len="${#password}"

pas="^(([A-Z]{1,})([a-z]{1,})([0-9]{1,}))*([!@#$%^&*_+-=?<>]{1}[0-9a-zA-Z]{1,})$"

if [[ $password =~ $pas ]] && [[ $len -gt 7 ]] && [[ $len -lt 17 ]]
then
        echo "Valid Password"
else
        echo "Invalid Password...Password must contain atleast 1 upper case, 1 lower case, 1 numeric and exact 1 special character."
fi
