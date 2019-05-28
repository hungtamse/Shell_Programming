function de_quy(){
 if [ $1 -eq 1 ]
 then
  echo 1
 else
  echo $(($1 * $(de_quy $(($1 - 1)))))
 fi
}

de_quy 4
exit 0;
