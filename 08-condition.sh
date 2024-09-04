#!/bin/bash

id=$(id -u)

VALIDATE (){
if [ $? -ne 0 ]
then
 echo -e " installing  is $Y failed "
 exit 1
else
  echo -e " installing  is $Y success "
fi
}


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

VALIDATE

yum install git -y

VALIDATE

