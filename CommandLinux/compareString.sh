echo -n "read value string_A: "; read string_A
echo  -n "read value string_B: "; read string_B
if [[ $string_A = $string_B ]]
then
 echo "$string_A = $string_B"
elif [[ $string_A > $string_B ]]
then
 echo "$string_A > $string_B"
elif [[ $string_A < $string_B ]]
then
 echo "$string_A < $string_B"
else
 echo
fi
