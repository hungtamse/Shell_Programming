declare -A array
function input_Array(){
 for ((i=0;i<$1;i++))
 do
  echo -n "Value of position `expr $i + 1`: ";
  read m
  array[$i]=$m
 done
}

function output_Array(){
 for ((j=0;j<${#array[*]};j++))
 do
  echo -n "${array[$j]} "
  sleep 1
 done
}

function sort(){
 for ((i=0;i<${#array[*]}-1;i++))
 do
  min=${array[$i]}
  j=`expr $i + 1`
  for ((j;j<${#array[*]};j++))
  do
   if [ ${array[$j]} -lt $min ]
   then
    min=${array[$j]}
   fi
  done
  j=`expr $j - 1`
  temp=${array[$i]}
  array[$i]=$min
  array[$j]=$temp
  echo "temp=$temp min=$min"
 done
}

echo -n "Size of array: "; read size
input_Array $size
output_Array
sort
echo
output_Array
exit 0
