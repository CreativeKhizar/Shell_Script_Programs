# Write a Script that checks whether a given word or phrase is a palindrome or not

read -p "Enter a Word to know it is palindrome or not : " word

n=$(echo -n $word | wc -c)

i=1
s=""
while [ $i -le $n ]
do
    w=$(echo $word | cut -c $i) 
    s=$w$s
    i=$((i+1))
done

if [ $word = $s ];then
    echo "$word is palindrome"
else    
    echo "$word is not palindrome"
fi