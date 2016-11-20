#!/bin/bash

yum install wget -y
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -ivh epel-release-latest-7.noarch.rpm
rm -rf epel-release-latest-7.noarch.rpm

yum update -y

# installs Golang
wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.7.3.linux-amd64.tar.gz
rm -rf go1.7.3.linux-amd64.tar.gz

# install dependencies
yum install -y npm make wget git gcc
go get github.com/olebedev/srlt
srlt restore
cd /go/src/github.com/arehmandev/project
npm i
make install
