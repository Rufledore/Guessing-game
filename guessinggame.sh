#Finding the number of files in directory.
numOfFiles=$(ls -al | grep "^-" | wc -l)

isGuesRight=false

echo "Gues the number of files in this directiry."

while true;do
	read userGues
	if [[ $userGues -eq $numOfFiles ]]
	then
		echo "Congratulations! Your gues is right!"
		break
	else
		if [[ $userGues -gt $numOfFiles ]]
		then
			echo "Your gues is greater than the right answer."
			echo "Try one more time."
		fi
		if [[ $userGues -lt $numOfFiles ]]
		then
			echo "Your gues is lower than the right answer."
			echo "Try one more time."
		fi
	fi
done
