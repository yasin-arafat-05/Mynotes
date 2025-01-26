#!/bin/bash

# This Is Single Line Command :)

<<comment
Multi-line comment 
syntax in bash script.
Author: Yasin Arafat
comment

# #01 ############################# Variable and Print Date ##############################
name="Yasin"  # ভেরিয়েবল ডিক্লারেশনে স্পেস নেই
echo "Author name is: $name and the date is: $(date)"
echo " "


# #02 ############################# Take Input ##############################
echo "Enter your name: "
read username
echo "User name is: $username"

echo ""
read -p "Enter your name: " username
echo "Your entered: $username"

# #03 ############################# Argument  ##############################
# ./file_name.sh 1stargument 2ndargument 3rdargument 4thargument
# Argument are separate with space:
############################################################################
echo ""
echo "-------- argument list --------"
echo "$0 $1 $2 $3"


# #04 ######################### Conditional (IF ELIF ELSE) ##################
echo ""
read -p "Enter a number : " number
if [[ $username == "Yasin" ]]; then  # if then space, শর্তের চারপাশে সঠিক স্পেস
    echo "$username is a good boy."
elif [[ $number == 100 ]]; then 
    echo "Number is : $number "
else 
    echo "$username is not a good boy."
fi  # If ব্লক শেষ করার জন্য `fi` ব্যবহার করা হয়

######## All the operator ########:
# https://www.geeksforgeeks.org/basic-operators-in-shell-scripting/
##################################:


<<looping
<--- for loop  --->
looping


for ((num=1; num<=5; num++));
do 
    echo "Yasin Arafat."
done


# ################### While loop #############################

<<whilelooping
<---------- While loop ----------->
whilelooping

n=1
while(( n<=5 ))
do
    echo "Number is: $n"
    (( n=n+1 ))
done


echo ""

(( n=0 ))


while (( n%2== 0 && n<=10 ))
do  
    echo "Number even: $n "
    (( n+=2 ))
done


# ################### Function ###################
<<comments
How to write a function in bash script:
comments

printingNumber(){
    local n=$1
while(( n<=5 ))
do 
    echo "I am printing $n"
    (( n+=1 ))
done
}

# calling the function with arguments
printingNumber 1

