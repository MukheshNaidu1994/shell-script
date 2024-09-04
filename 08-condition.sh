#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]
then
  echo " error: could you please provide root access "
else 
  echo " you have a root access "
fi


