#!/bin/bash

id=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $id -ne 0 ]
then
  echo -e " $R error: $N could you please provide root access "
  exit 1
else 
  echo -e " you have a $G root access "
fi

yum install mysql -y

if [ $? -ne 0 ]
then
 echo " installing mysql is $Y failed "
 exit 1
else
  echo echo " installing mysql is $Y success "
fi

