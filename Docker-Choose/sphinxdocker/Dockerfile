#FROM ubuntu:16.04
FROM pre_choose:v1

RUN apt-get -y install sphinxsearch \
    && apt-get -y install net-tools \
    && apt-get -y install mariadb-client \
    && sed -i 's/START=no/START=yes/g' /etc/default/sphinxsearch

COPY ./sphinx.conf /etc/sphinxsearch/
    
# Define working directory.
WORKDIR /data

EXPOSE 9306 9312

COPY ./entrypoint.sh /sbin/entrypoint.sh
ENTRYPOINT ["/sbin/entrypoint.sh"]
#ENTRYPOINT /usr/bin/indexer -c /etc/sphinxsearch/sphinx.conf --all
#CMD ["/usr/bin/searchd", "--config", "/etc/sphinxsearch/sphinx.conf", "--nodetach"]
