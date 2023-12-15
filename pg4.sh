read fn 

set $fn i

f [ $# -lt 1 ] 

then 

 echo "Program needs atleast 1 filename" 

 exit; 

fi 

for i in $@ 

do 

 echo -e "\n \n After converting to uppercase file $i" 

 echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 

 tr 'a-z' 'A-Z' < $i 

done
