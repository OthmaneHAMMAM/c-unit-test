#Ftech unbuntu image
FROM ubuntu:22.04

#install build tools
RUN apt update &&\
apt install -y wget build-essential autoconf automake libtool

#Copy project inot image
RUN mkdir /project
COPY src /project/src
COPY tests /project/tests
COPY Makefile /project/Makefile

#Download and build CppuTest
RUN mkdir /project/tools/ && \
	cd /project/ && \
	wget https://github.com/cpputest/cpputest/releases/download/latest-passing-build/cpputest-latest.tar.gz &&\
	tar xf cpputest-latest.tar.gz && \
	mv cpputest-latest/ tools/cpputest/ && \
	cd tools/cpputest/&& \
	autoreconf -i &&\
	./configure &&\
	make
	
#Excute script
ENTRYPOINT ["make", "test", "-C","project/"]