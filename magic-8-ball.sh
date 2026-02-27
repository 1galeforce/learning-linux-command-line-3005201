#!/bin/bash
# Magic 8-Ball script with extra answers and thinking effect

ANSWERS=(
    "It is certain."
    "Yes, definitely."
    "Reply hazy, try again."
    "Cannot predict now."
    "Don't count on it."
    "Outlook not so good."
    "Very doubtful."
    "Ask again later."
    "Most likely."                           # extra answer 1
    "Concentrate and ask again."             # extra answer 2
    "Vous devez réfléchir en français."      # funny extra
    "The answer is somewhere in the clouds." # funny extra
)

echo "--- The Magic 8-Ball ---"
read -p "Ask the 8-Ball a question and press Enter: "
echo -n "Shaking the 8-Ball"
sleep 2
echo ""
NUM_ANSWERS=${#ANSWERS[@]}
RANDOM_INDEX=$(( RANDOM % NUM_ANSWERS ))
echo "8-BALL SAYS: ${ANSWERS[RANDOM_INDEX]}"
