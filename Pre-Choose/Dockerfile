FROM ubuntu:16.04

# RUN apt-get update \
#     && apt-get -y install software-properties-common \
#     && apt-get -y install apt-transport-https \
#     && add-apt-repository 'deb [arch=amd64,i386,ppc64el] https://mirrors.evowise.com/mariadb/repo/10.2/ubuntu xenial main' \
#     && apt-get update

RUN apt-get update \
    && apt-get -y install net-tools \
    && apt-get -y install vim \
    && apt-get -y install telnet \
    && apt-get -y install inetutils-ping \
    && apt-get -y install dnsutils \
    && apt-get -y install software-properties-common \
    && apt-get -y install apt-transport-https \
    && LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8 \
    #&& add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://ftp.ubuntu-tw.org/mirror/mariadb/repo/10.1/ubuntu xenial main' \
    && add-apt-repository 'deb [arch=amd64,i386,ppc64el] https://mirrors.evowise.com/mariadb/repo/10.2/ubuntu xenial main' \
    # && sh -c "echo 'deb https://mirrors.evowise.com/mariadb/repo/10.2/ubuntu '$(lsb_release -cs)' main' > /etc/apt/sources.list.d/MariaDB102.list" \
    && add-apt-repository -y ppa:builds/sphinxsearch-daily \
    && apt-get update \
    && apt-get -y install debconf-utils
