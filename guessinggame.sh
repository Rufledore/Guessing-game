# File: guessinggame.sh
#Finding the number of files in directory.

function greaterOrLower {
	if [[ $1 -gt $2 ]]
        then
        	echo "Your gues is greater than the right answer."
                echo "Try one more time."
        fi
        if [[ $1 -lt $2 ]]
        then
                echo "Your gues is lower than the right answer."
                echo "Try one more time."
        fi
}

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
		greaterOrLower $userGues $numOfFiles
	fi
done
