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
 done
}

function sort(){
 for ((i=0;i<${#array[*]}-1;i++))
 do
  min=${array[$i]}
  position=$i
  j=`expr $i + 1`
  for ((j;j<${#array[*]};j++))
  do
   if [ ${array[$j]} -lt $min ]
   then
    min=${array[$j]}
    position=$j
   fi
  done
  temp=${array[$i]}
  array[$i]=$min
  array[$position]=$temp
 done
}

echo -n "Size of array: "; read size
input_Array $size
output_Array
echo
sort
echo
output_Array
exit 0
