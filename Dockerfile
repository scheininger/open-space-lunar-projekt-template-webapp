FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:2.4-203.1665062486

Add src/index.html /var/www/html/index.html

EXPOSE 8080

CMD run-httpd
