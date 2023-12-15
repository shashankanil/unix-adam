echo Enter File1
read f1
echo Enter File2
read f2
echo Enter File3
read f3
exec 3> f5
cat $f1 $f2 $f3 >&3
echo The Merged File is:
cat f5
exec 3<&-

