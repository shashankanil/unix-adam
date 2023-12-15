read f1

if [ -f $f1 ]

then

echo "The number of lines in a file that does not contain vowels are:"

grep -v -i '[aeiou]' $f1 | wc -l

else

echo "File does not exist"

fi

