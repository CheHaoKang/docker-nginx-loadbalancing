#!/bin/bash
set -e

sleep 5  # wait for mariadb to be brought up

sphinx_search_ip=`host sphinx_search | sed -e 's/sphinx_search has address //g'`
echo 'sphinx_search IP=>'$sphinx_search_ip
mysql -h mariadb -uroot -e 'USE seq_sentiment;DROP TABLE IF EXISTS sphinx_samples;'
mysql -h mariadb -uroot -e 'USE seq_sentiment;CREATE TABLE sphinx_samples (id BIGINT UNSIGNED NOT NULL, weight INTEGER NOT NULL, query VARCHAR(3072) NOT NULL, group_id INTEGER, INDEX(query)) ENGINE=SPHINX DEFAULT CHARSET=utf8 CONNECTION="sphinx://'$sphinx_search_ip':9312/idx_samples";'

/usr/bin/indexer -c /etc/sphinxsearch/sphinx.conf --all
exec /usr/bin/searchd --config /etc/sphinxsearch/sphinx.conf --nodetach "$@"
