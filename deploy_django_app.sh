#!/bin/bash

<<task
Deploy a Django app
and handle the code for errors
task

code_clone(){
	echo "Cloning the django app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){
	echo "Installing dependencies"
	sudo apt-get install docker.io nginx -y
}
reuired_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}
echo "********* DEPLOYMENT STARTS *********"

if ! code_clone; then
	echo "the code directory already exits"
	cd django-notes-app
fi

if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi
if ! reuired_restarts; then
	echo "System sault identified"
	exit 1
fi
deploy

echo "*************** DEPLOYMENT DONE ***********"
