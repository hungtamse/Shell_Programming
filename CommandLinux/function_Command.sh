subtract(){
 echo `expr $1 - $2`
}
function add(){
 echo "$1 + $2" | bc
}
subtract 5 3
add 5 3
exit 0
