FROM ubuntu
RUN apt-get update 
RUN apt-get install -y httpd  net-tools curl 
COPY ./data/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
