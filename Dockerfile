FROM ububtu:20.04
MAINTAINER Parfenov Andrei <blablabla@pochta.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y git
RUN git pull https://github.com/oscarplatoon/static-webpage.git .
RUN mv ./* /var/www/sitetest

EXPOSE 80
