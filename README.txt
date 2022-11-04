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


http://cliwebapp-user1.apps.cluster-9jsdj.9jsdj.sandbox2238.opentlc.com/
