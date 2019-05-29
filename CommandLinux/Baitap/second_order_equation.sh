#!bin/bash

function First_Order_Equation(){
 if [ $1 -eq 0 ]
 then

  if [ $2 -eq 0 ]
  then
   echo "The equation has multitude solution"
  else
   echo "The equation has no solution"
  fi

 else
  echo "The equation has double solution: "; echo "scale=7; -$2 / $1" | bc
 fi
}

echo -n "Input value a="; read a
echo -n "Input value b="; read b
echo -n "Input value c="; read c

if [ $a -eq 0 ]
then
 First_Order_Equation $b $c
else
 delta=`expr $b \* $b - 4 \* $a \* $c`
 if [ $delta -lt 0 ]
 then
  echo "The equation has no solution"
 elif [ $delta -eq 0 ]
 then
  echo "The euqation has double solution: ";echo "scale=7; -$b / (2 * $a)" | bc
 else
  echo "The equation has two solution:"
  echo "scale=7; (-$b - sqrt($delta)) / (2 * $a)" | bc
  echo "scale=7; (-$b + sqrt($delta)) / (2 * $a)" | bc
  echo "scale=7; sqrt($delta)" | bc
 fi
fi
