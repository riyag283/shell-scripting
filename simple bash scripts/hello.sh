#! /bin/bash
# this is a comment
echo "Hello World" # this is also a comment

# echo is used for printing
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

name=Riya
echo $name
echo The name is $name
10val=10
echo The value is $10val
val=10
echo The value is $val


# reading printing variables
echo "Enter name : "
read name
echo "Entered name is : $name"

echo "Enter names : "
read name1 name2 name3
echo "Entered names are : $name1, $name2, $name3" 

# array
echo "Enter names: "
read -a names
echo "Names: ${names[0]}, ${names[1]}"

# login
read -p 'Username : ' user_var
read -sp 'Password : ' pass_var
echo
echo "Username : $user_var"
echo "Password : $pass_var"
