echo -n "enter value a="; read a
echo -n "enter value b="; read b
if [ $a -eq $b ]
then
 echo "$a=$b"
elif [ $a -gt $b ]
then
 echo "$a > $b"
elif [ $a -lt $b ]
then
 echo "$a < $b"
fi
