#!/bin/bash

correct_username="user"
correct_password="pass"

function check_cred(){
	if [[ "$1" == "$correct_username" ]] && [[ "$2" == "$correct_password" ]]; then
		echo -e "\nLogin successful"
	else
		echo -e "\nWrong Username or Password"
	fi

}

read -p "Enter Username: " username
read -s -p "Enter Password: " password

check_cred "$username" "$password"
