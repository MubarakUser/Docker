FROM ubuntu:18.04
LABEL author="khaja ibrahim"
LABEL organization="QualityThought"
RUN apt update && apt-get install apache2 -y
USER www-data
CMD ["whoami"]

FROM ubuntu:18.04
LABEL author="khaja ibrahim"
LABEL organization="QualityThought"
RUN apt update && apt-get install apache2 -y && apt install curl -y
USER www-data
HEALTHCHECK CMD curl -f http://localhost/ || exit 1
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]