half=`expr $1 / 2`
for ((i=2;i<$half+1;i++))
do
 if [ $(( $1 % $i )) -eq 0 ]
 then
  echo "$1 is not prime"
  exit 1
 fi
done
echo "$1 is prime"
exit 0
