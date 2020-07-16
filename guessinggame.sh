count=$(ls -l | wc -l)

function check {
  if [[ $1 -lt $2 ]]
  then
      echo "It's lower!"
  elif [[ $1 -gt $2 ]]
  then
      echo "It's higher!"
  else
      echo "Congratulations! You have guessed it right"
  fi
}

while [[ $count -ne $guess ]]
do
   read -p "Guess how many files are there in current repository? " guess
   echo $(check  $guess $count)
done
