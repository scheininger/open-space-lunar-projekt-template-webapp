navigate into the workdir
cd open-space-lunar-projekt-template-webapp/

build the container image
podman build -t httpd-app .

start the container
podman run -p 8080:8080 -d --rm httpd-app