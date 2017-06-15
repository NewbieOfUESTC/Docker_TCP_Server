#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for webdevops/php-nginx:debian-8-php7
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM webdevops/php:debian-8-php7

COPY conf/ /opt/docker/


RUN chmod 777 -R /opt/docker/bin/service.d/EasyDarwin/EasyDarwin 
    
EXPOSE 10008 554

ENTRYPOINT [" /opt/docker/bin/service.d/EasyDarwin/EasyDarwin/start.sh"] 
