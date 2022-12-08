#!/bin/bash -x
echo "ASSIGNMENT-3";

echo "QUESTION-1";

function celsius()
{
input1=$temp1;
#input in celcius conversion

if [ $input1 -ge 0 -a $input1 -le 100 ]
then
#degF = (degC * 9/5) + 32
expr1=$(($(($temp1*9/5))+32));
echo "$input1 Calsius is converted into $expr1 Fahrenheit.";
else
echo "Invalid input!!!";
fi
}

function fahrenheit()
{
input2=$temp2;
#input in feradice conversion
if [ $input2 -ge 32 -a $input2 -le 212 ]
then
#degC = (degF – 32) * 5/9
expr2=$(($(($temp2-32))*5/9));
echo "$input2 Fahrenheit is converted into $expr2 Calsius.";
else
echo "Invalid input!!";
fi
}


echo "Enter 1 for input in Celsius."
echo "Enter 2 for input in Fahrenheit."
read input;
if [ $input -gt 2 -o $input -eq 0 ]
then
echo "Invalid input!!!";
else
if [ $input -eq 1 ]
then
echo "Enter the number (0degC - 100degC)";
read temp1;
celsius $temp1;
elif [ $input -eq 2 ]
then
echo "Enter the number (32degF - 212degF) :"
read temp2;
fahrenheit $temp2;
else
echo "Error occured!!";
fi
fi
echo " ";


echo "QUESTION-2"

function palindrome()
{
number2=$number2;
num=$number2;

while [ $num -ne 0 ]
do
reverse=$(($reverse$(($num%10))));
num=$(($num/10))
done
if [ $reverse == $number2 ]
then
echo "Entered number $number2 is Palindrome number."
else
echo "Entered number $number2 is not a Palindrome number."
fi

}
 
echo "Enter the number to check number is palindrome or not:"
read number2;
palindrome $number2;
echo " ";
echo " ";

echo "QUESTION-3";

function prime()
{
num3=$num3;
for((i=1;i<$num3;i++))
do
check3=$(($num3%2));
if [ $check3 -eq 0 ]
then
count3=$(($count3+1));
fi
done
if [ $check3 -eq 2 ]
then
echo " Entered number $num3 is prime number."
else
echo "Entered number $num3 is  not Prime number."
fi
}



function palindrome1
{
num3=$num3;
temp=$num3;
while [ $temp -ne 0 ]
do
reverse3=$(($reverse3$(($temp%10))));
temp=$(($temp/10));
done
if [ $reverse3 == $num3 ]
then
echo "$num3 is Palindrome."
prime $num3;
else
echo "$num3 is not a Palindrome ."
fi
}

function prime()
{
num3=$num3;
for((i=1;i<$num3;i++))
do
check3=$(($num3%2));
if [ $check3 -eq 0 ]
then
count3=$(($count3+1));
fi
done
if [ $check3 -eq 2 ]
then
echo " Entered number $num3 is prime number."
else
echo "Entered number $num3 is  not Prime number."
fi
}

echo "Enter the number to check number is palindrome or not and also prime :"
read num3;
palindrome1 $num3;


echo " ";
echo "FINISHED";



