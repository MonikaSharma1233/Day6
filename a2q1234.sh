#!/bin/bash -x

echo "ASSIGNMENT-2";

echo "QUESTION-1";
i=1;
n=8;
echo "Table of power two 2^8=256."
while [ $i -le $n ]
do
expr=$((2**$i));
echo "2^$i =$expr";
i=$(($i+1));
done
echo " ";


echo "QUESTION-2";
echo "Think a number between 1 to 100";
read number;
expr2=$(($number/2));
echo "Is $expr2 your number  greater then your number .press y for yes or n for no.";
read check2;
loop2=1;
while [ $loop2 -gt 0 ]
do
case $check2 in
n)
expr2=$(($expr2+1));;
*)
expr2=$(($expr2-1));;
esac
if [ $expr2 == $number ]
then
echo "Magic number is $expr2.";
break;
fi
done
echo " ";

echo "QUESTION-3"
loop3=1;
limit=11;
hcount=0;
tcount=0;
while [ $loop3 -gt 0 ]
do
toss=$((RANDOM%2));
case $toss in
1)
hcount=$(($hcount+1));;
*)
tcount=$(($tcount+1));;
esac
if [ $hcount == $limit ]
then
echo "$hcount Heads are generated.";
break;
elif [ $tcount -eq $limit ]
then
echo "$tcount Tails are generated.";
break;
fi
done
echo " ";
  
echo "QUESTION-4";


pocket=100;
loop4=1;
while [ $loop4 -gt 0 ]
do
betresult=$((RANDOM%2));
case $betresult in
1)
pocket=$(($pocket+1));
wincount=$(($wincount+1));;
*)
pocket=$(($pocket-1));
losscount=$(($losscount+1));;
esac
if [ $pocket -eq 0 -o $pocket -eq 200 ]
then
echo "Bet finished."
break;
fi
done
echo "Number of time wins :$wincount.";
echo "Number of time loss :$losscount.";
echo "Pocket :$pocket";
