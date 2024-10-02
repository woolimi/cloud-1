FROM debian:buster

# to verify public cert and private key
# https://8gwifi.org/PemParserFunctions.jsp
# openssl x509 -text -noout -in /etc/ssl/certs/kychoi.crt
# openssl pkey -in /etc/ssl/private/kychoi.key -text -noout
RUN apt-get update -y && apt-get -y install nginx vim

COPY ./nginx.conf /etc/nginx/sites-available/default

ENTRYPOINT ["nginx", "-g", "daemon off;"]