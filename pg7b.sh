echo Enter the file name:
read file
 if [ -f $file ]
then
c=`cat $file | wc -c`
c=`expr $c - 1`
w=`cat $file | wc -w`
l=`cat $file | wc -l`
echo Number of characters are: $c
echo Number of words are: $w
echo Number of Lines are: $l
else
echo file does not exist
fi

