echo "enter the first file name" 

read file1 

echo "enter the second file name" 

read file2 

if [ -e $file1 -a -e $file2 -a ! -d $file1 -a ! -d $file2 ] 

then 

 cmp -s -- $file1 $file2 && rm $file2 

 if [ ! -e $file2 ] 

 then 

 echo " the two files contents are same. so $file2 is deleted" 

 else 

 echo " the two file contents are not same and $file2 not deleted" 

 fi 

else 

 echo "Input should be a regular file" 

fi
