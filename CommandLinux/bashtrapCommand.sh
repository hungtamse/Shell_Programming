trap echo"CTRL+C detected!...executing bashtrap!" INT
clear;
for a in {1..10};
do
echo "$a/10 to Exit"
sleep 1;
done
echo "Exit bash trap example!!!"
