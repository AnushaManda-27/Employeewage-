#! /bin/bash -x


echo "welcome to Employeewage"
IS_PRESENT=1
empCheck=$(( RANDOM % 2 ))
if [ $empCheck -eq $IS_PRESENT ]
then
    echo "Employee is present"
else
     echo "Employee is abscent"
fi
