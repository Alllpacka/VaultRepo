Read-Host = [read]([https://www.javatpoint.com/bash-read-user-input](https://www.javatpoint.com/bash-read-user-input "https://www.javatpoint.com/bash-read-user-input"))
StartsWith = [if \[\[ $input = B* \]\]](https://www.cyberciti.biz/faq/bash-check-if-string-starts-with-character-such-as/)
Split = 
~~~bash
read -p "Enter any string separated by space: " str  #reading string value  

IFS='' #setting space as delimiter  
read -ra ADDR <<<"$str" #reading str as an array as tokens separated by IFS  

for i in "${ADDR[@]}"; #accessing each element of array  
do  
echo "$i"  
done
~~~
Write-Host = echo
