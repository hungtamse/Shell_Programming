declare -A arr_fruit
arr_fruit=([apple]="100 dollar" [cherry]="150 dollar" [babana]="20 dollar")
echo "value of arr: ${arr_fruit[*]}"
echo "header of arr: ${!arr_fruit[*]}"
echo "count of arr: ${#arr_fruit[*]}"
echo "${arr_fruit[apple]}"
