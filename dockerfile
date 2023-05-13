FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 net-tools curl 
ADD ./data/* /var/www/html/
RUN cd /var/www/html/ && unzip brighton.zip
RUN cp /var/www/html/brighton-html/*  /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
