#!bin/bash
echo -n "input value a="; read a
echo -n "input value b="; read b

if [ $a -eq 0 ]
then
 if [ $b -ne 0 ]
 then
  echo "The equation has no solution"
 else
  echo "The equation has a multitude of solutions"
 fi
else
 echo -n "The solution equation is "; echo "scale=7; -$b / $a" | bc
fi
