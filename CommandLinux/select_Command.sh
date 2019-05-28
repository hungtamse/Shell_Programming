declare -A arr
arr=([tea]="10 dollar" [coffee]="15 dollar" [lemond]="10 dollar")
select one in "tea" "coffee" "lemond"
do
 echo "value one: $one"
 echo "jhfhsdkfjhskdj"
 #case $one in
 #             "tea") echo "${arr[$one]}" break
 #             ;;
 #             coffee) echo "${arr[$one]}" break
 #             ;;
 #             lemond) echo "${arr[$one]}" break
 #             ;;
# esac
done
