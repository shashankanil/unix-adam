echo "Enter a filename" 

read f 

echo -e "\n The content of the file is : " 

cat $f 

 echo 

echo "The lines that has exactly 2 characters"

 echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 

echo -e "`grep "^.\{2\}$" $f`" 

echo -e "\nThe lines that has more than 2 spaces" 

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 

echo -e "`grep "[[:space:]]\{2,\}" $f`" 
