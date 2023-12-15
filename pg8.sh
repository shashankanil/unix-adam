echo Enter directory name
read dir
if [ -d $dir ]
then
echo List of files in the directory are:
ls -l $dir | grep '^-'
else
echo Enter proper directory name
fi

