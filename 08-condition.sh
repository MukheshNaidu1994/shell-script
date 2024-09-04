#!/bin/bash

id=$(id -u)

VALIDATE (){
if [ $1 -ne 0 ]
then
 echo -e " $2............ $Y failed "
 exit 1
else
  echo -e " $2...... $Y success "
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

VALIDATE $? " insatlling mysql "

yum install git -y

VALIDATE $? " insatlling git "

