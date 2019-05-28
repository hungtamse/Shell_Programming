echo "File name: "
read name
touch $name
while read line
do
 echo $line >> $name 
done
exit 0
