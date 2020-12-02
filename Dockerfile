FROM ubuntu:20.04
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update  && apt-get install -y build-essential zip unzip ant make git vim curl gfortran libssl-dev openjdk-8-jdk 
RUN update-java-alternatives --set /usr/lib/jvm/java-1.8.0-openjdk-amd64

