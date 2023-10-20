# Develop a Script that reverse the order of characters in each line of a text file

read -p "Enter the name of the file : " file
echo "" > tmp
while read line
do
    word=$line
    i=1
    s=""
    n=$(echo -n $word | wc -c)
    while [ $i -le $n ]
    do
        w=$(echo $word | cut -c $i) 
        s=$w$s
        i=$((i+1))
    done
    echo $s >> tmp

done < $file

cat tmp
rm tmp