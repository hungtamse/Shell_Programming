temp=0
function isPrime(){
 half=`expr $1 / 2`
 for ((j=2;j<$half+1;j++))
 do
  if [ $(( $1 % $j )) -eq 0 ]
  then
   temp=0
   return
  fi
 done
 temp=$1
}

for ((i=2;i<$1+1;i++))
do
 isPrime $i
 if [ $temp -ne 0 ]
 then
  echo -n "$temp "
 echo
 fi
done
exit 0
