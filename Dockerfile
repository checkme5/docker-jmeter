# inspired by https://github.com/hauptmedia/docker-jmeter  and
# https://github.com/hhcordero/docker-jmeter-server/blob/master/Dockerfile
FROM alpine:latest

# MAINTAINER Just van den Broecke<just@justobjects.nl>

ARG JMETER_VERSION="5.1.1"
ENV JMETER_HOME /opt/apache-jmeter-${JMETER_VERSION}
ENV	JMETER_BIN	${JMETER_HOME}/bin
ENV	JMETER_DOWNLOAD_URL  http://mirrors.tuna.tsinghua.edu.cn/apache/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz
