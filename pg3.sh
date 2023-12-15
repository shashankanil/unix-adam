echo "Enter the list of file names:" 
read -r fn

set $fn 

if [ "$#" -lt 2 ]; then 
  echo "Program needs at least 2 filenames" 
  exit 
fi 

for str in $(cat "$1" | tr ' ' '\n' | sort | uniq); do 
  echo -e "Words to be searched is $str" 
  echo -e "~~~~~~~~" 
  echo -e "The number of occurrence in" 
  grep -c "$str" "$@" 
done

