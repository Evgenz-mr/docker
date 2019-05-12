FROM ubuntu:16.04
MAINTAINER Evgeny Mrykhin <Evgeny_Mrykhin@epam.com>
# install nginx
RUN apt-get update -y && apt-get install nginx -y /
    mkdir -p /var/www/example.com/html /
    chown -R root:root /var/www/example.com/html /
    chmod -R 755 /var/www/example.com

COPY index.html /var/www/example.com/html/index.html
COPY example.com /etc/nginx/sites-available/example.com

RUN ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

# expose ports
EXPOSE 80 443
# add nginx con
CMD ["nginx", "-g", "daemon off;"]
