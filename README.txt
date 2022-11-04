Podman
	#get the git repo
	git clone https://github.com/scheininger/open-space-lunar-projekt-template-webapp
	
	#navigate into the workdir
	cd open-space-lunar-projekt-template-webapp/
	
	#build the container image
	podman build -t httpd-app .
	
	#start the container
	podman run -p 8080:8080 -d --rm httpd-app	
Openshift CLI
	#Create the pod from the Git repo
	oc new-app --name=cliwebapp https://github.com/scheininger/open-space-lunar-projekt-template-webapp
	
	#Create the route to access the pod from external
	oc expose service cliwebapp	
OpenshiftGUI
	#After choosing the Developer view, click on the Add button.
	#Choose to add from Git Repository and Dockerfile and enter this URL: https://github.com/scheininger/open-space-lunar-projekt-template-webapp
	#Check that the route checkbox is ticked and then create the pod
	
Docker.io
	# Create Docker.io account https://hub.docker.com/
	# sudo podman tag localhost/open-luna hornj/open-space-lunar-projekt-template-webapp:v1
	# sudo podman login docker.io
	# sudo podman push hornj/open-space-lunar-projekt-template-webapp:v1

Ansible
	#install ansibele on your rhel machine
	pip3 install --user ansible
	#check if ansible is installed
	ansible --version
	
	#Install moduels for kubernetes and openshift
	sudo pip3 install kubernetes
	sudo pip3 install openshift
	
	#Download the oc cli tool
	wget https://downloads-openshift-console.apps.cluster-9jsdj.9jsdj.sandbox2238.opentlc.com/amd64/linux/oc.tar
	
	#unpack the oc tool and make it accessible
	tar -xf oc.tar
	sudo mv oc /usr/bin/
	sudo chmod 777 /usr/bin/oc
	
	#login into your openshift cluster with your token
	oc login --token=sha256~ktttKTcG0lEmtHcXMBnqPHnZRf8gpFeXpFZ4gz-7grc --server=https://api.cluster-9jsdj.9jsdj.sandbox2238.opentlc.com:6443
	
	#go into the ansible playbook directory and run the playbook
	ansible-playbook deploy.yml 
