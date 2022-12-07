#!/bin/bash -x
echo "DAY6 ASSIGNMENT-1";
echo "QUESTION=1";
echo "Enter the value of n for table of power of 2 till n: " 
read n;


echo "The table of 2^n is :";
for((i=1;i<=$n;i++))
do
expr=$((2**$i));
echo "2^$i= " $expr;
expr1=$((2**$n));
done
echo "Entered number is $n so 2^$n is: $expr1";




echo "QUESTION-2"

echo "Enter the Value for n to print the pattern:";
read n;
l="+";
echo "H lower power $n turm in series = "
k=0;
for((j=1;j<=$n;j++))
do
printf "1/$j" ;
if [ $j == $n ]
then
l=" "
else
printf $l;
fi
done

echo " ";
echo " ";
echo "QUESTION-3"
echo "Enter the number to check num is prime is not: ";
read n1;
for((i=1;i<=$n1;i++))
do
check=$(($n1%$i));
if [ $check == 0 ]
then
count=$(($count+1));
fi
done
if [ $count -eq 2 ]
then
echo "$n1 is a Prime number.";
else
echo "$n1 is a not a Prime number."
fi
echo " ";
echo " ";

echo "QUESTION-4"
echo "Enter the min number: "
read min;
echo "Enter the max number: "
read max;
var=",";
echo "Prime numbers b/w $min - $max :";
for((j=$min;j<=$max;j++))
do
#echo $j;
for((k=1;k<=$j;k++))
do
check1=$(($j%$k))
if [ $check1 == 0 ]
then
count1=$(($count1+1));
fi
done
if [ $count1 == 2 ]
then
printf "$j";
if [ $k == $max ]
then
printf " ";
else
printf ",";
fi
fi
count1=0;
done
echo " ";
echo " ";


echo "QUESTION-5"
echo "Enter the number to know factorial: "
read number;
fact=1;
for((i=1;i<=$number;i++))
do
fact=$(($i*$fact))
done
echo "The factorial of $number is $fact."
echo " ";
echo " ";



#Write a program to compute Factors of a number N using prime factorization method.
#Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
#O/P -> Print the prime factors of number N.
echo "QUESTION-6"
echo "Enter the number to know factors: ";
read n1;
echo "The factors of $n1 are: "
for((i=1;i<=$n1;i++))
do
	check3=$(($n1%$i));
	#echo "$n1 % $i = $check";
	if [ $check3 == 0 ]
	then
	count3=$(($count3+1));
	printf "$i\t";
	fi
done
printf "\n";
if [ $count3 -eq 2 ]
then
echo "$n1 is a Prime number.";
else
echo "$n1 is a not a Prime number."
fi
echo " ";
