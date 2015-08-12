FROM centos:centos7
MAINTAINER "Ralf Bosz <ralf@bosz.com>"

ENV JAVA_HOME /opt/jdk1.8.0_51

# Install JDK8
WORKDIR /opt
RUN curl -Lkj -H "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz | \
    tar xz && \
    chown -R root:root ${JAVA_HOME} && \
    rm -f ${JAVA_HOME}/*.zip && \
    rm -f ${JAVA_HOME}/COPYRIGHT && \
    rm -f ${JAVA_HOME}/LICENSE && \
    rm -f ${JAVA_HOME}/README.html && \
    rm -f ${JAVA_HOME}/THIRDPARTYLICENSEREADME*
