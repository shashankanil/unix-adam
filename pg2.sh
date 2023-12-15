echo " The files in the current dir are :"

echo " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "

 ls -l 

echo -e "\n\n Files having all permission [ r/w/x] " 

echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n" 

for file in * 

do 

 if [ -f $file ] 

 then 

 if [ -r $file -a -w $file -a -x $file ] 

 then 

 ls -l $file 

 fi 

 fi 

done
