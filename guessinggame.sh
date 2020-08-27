function guess(){
ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess"
        read  number
	if [[ $number -lt $ans ]]
	then
  		echo "$number is too low!!...Try again!"
	elif [[ $number -gt $ans ]]
	then
  		echo "$number is too high!!..Try again!"
	else
  		echo "Congratulations!! Your guess is correct!"
	fi
    done
}
echo "guess the files number in the current directory!"
guess	
