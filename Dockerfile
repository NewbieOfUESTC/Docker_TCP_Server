#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for webdevops/php-nginx:debian-8-php7
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM webdevops/php:debian-8-php7

COPY conf/ /opt/docker/

# Install nginx
RUN /opt/docker/bin/service.d/EasyDarwin/EasyDarwin/start.sh \
    && /opt/docker/bin/provision run --tag bootstrap --role webdevops-nginx --role webdevops-php-nginx \
    && /opt/docker/bin/bootstrap.sh


EXPOSE 10008 554
