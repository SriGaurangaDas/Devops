#!/bin/bash

<< Task 
Dploy a Django app
and handel the errors
Task

function code_clone(){
	echo "Cloning the Django app...."
	git clone https://github.com/LondheShubham153/django-notes-app.git 
}

function install_requirements(){
	echo "Installing dependencies"
	sudo apt-get install docker.io nginx -y
}

function required_restart(){
	echo "Enabeling and starting services"
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
	sudo systemctl restart nginx
}

function deploy(){
	echo "Deploying the app"
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest python3 manage.py runserver 0.0.0.0:8000
}

echo "################### Deployment Started #####################"
if ! code_clone; then
	echo "the code directory already exists"
	cd django-notes-app
fi
if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi
if ! required_restart; then
	echo "System Fault identified"
	exit 1;
fi
deploy

echo "################## Deployment Done #####################"
