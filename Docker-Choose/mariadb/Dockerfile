#FROM ubuntu:16.04
FROM pre_choose:v1

COPY ./my.cnf /data/
COPY ./seq_sentiment.sql /data/

#RUN apt-get install net-tools

#RUN apt-get update \
#    && apt-get -y install apt-utils \ 
#    && apt-get -y install software-properties-common \
#    && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
#    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8 \
#    && add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://ftp.ubuntu-tw.org/mirror/mariadb/repo/10.1/ubuntu xenial main' \
#    && export DEBIAN_FRONTEND=noninteractive \
#    && echo "maridb-server mariadb-server/root_password xxx" | debconf-set-selections \
#    && echo "mariadb-server mariadb-server/root_password_again xxx" | debconf-set-selections \
#    && echo "mariadb-server-10.1" mysql-server/root_password password 'xxx' | debconf-set-selections \
#    && echo "mariadb-server-10.1" mysql-server/root_password_again password 'xxx' | debconf-set-selections \ 
#RUN apt-get -y install mariadb-server mariadb-client \
RUN echo "mariadb-server" mysql-server/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server" mysql-server/root_password_again password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.0" mysql-server-10.0/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.0" mysql-server-10.0/root_password_again password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.1" mysql-server-10.1/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.1" mysql-server-10.1/root_password_again password 'xxx' | debconf-set-selections \
    && echo "mariadb-server" mariadb-server/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server" mariadb-server/root_password_again password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.0" mariadb-server-10.0/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.0" mariadb-server-10.0/root_password_again password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.1" mariadb-server-10.1/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.1" mariadb-server-10.1/root_password_again password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.2" mariadb-server-10.2/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.2" mariadb-server-10.2/root_password_again password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.2" mysql-server/root_password password 'xxx' | debconf-set-selections \
    && echo "mariadb-server-10.2" mysql-server/root_password_again password 'xxx' | debconf-set-selections \
    && apt-get -y install mariadb-server mariadb-client \
    && cp /data/my.cnf /etc/mysql/ \
    && echo "mysqld_safe &" > /tmp/config \
    && echo "mysqladmin -uroot -pxxx --silent --wait=15 ping || exit 1" >> /tmp/config \
    && echo "mysql -uroot -pxxx -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" IDENTIFIED BY \"xxx\" WITH GRANT OPTION;'" >> /tmp/config \
    && echo "mysql -uroot -pxxx -e 'INSTALL SONAME \"ha_sphinx\";'" >> /tmp/config \
    && echo "mysql -uroot -pxxx < /data/seq_sentiment.sql" >> /tmp/config \
    && bash /tmp/config \
    && rm -f /tmp/config
#    && echo "mysql -uroot -pxxx -e 'UPDATE mysql.user SET plugin=\"\";'" >> /tmp/config \
#    && echo "mysql -uroot -pxxx -e 'SELECT user,plugin FROM mysql.user;'" >> /tmp/config \
#    && echo "mysql -uroot -pxxx -e 'UPDATE mysql.user SET password=PASSWORD(\"xxx\") WHERE user=\"root\";'" >> /tmp/config \
#    && echo "mysql -uroot -pxxx -e 'FLUSH PRIVILEGES;'" >> /tmp/config \
#    && echo "searchd -c /etc/sphinxsearch/sphinx.conf --nodetach \"$@\" &" \
    
#    && sed -i 's/START=no/START=yes/g' /etc/default/sphinxsearch \
#    && service sphinxsearch restart

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["mysqld_safe"]

EXPOSE 3306

#    && mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('xxx');"
#    && apt-get install -y php7.1 php7.1-fpm libapache2-mod-php7.1 php7.1-cli php7.1-common php7.1-mbstring php7.1-gd php7.1-intl php7.1-xml php7.1-mysql php7.1-mcrypt php7.1-zip php7.1-curl \
#    && apt-get -y install php-memcached memcached \
#    && cd ~ \
#    && git clone xxx \
#    && cd Choose \
#    && git fetch --all \
#    && git checkount -b dev origin/dev \
#    && git pull origin dev \

