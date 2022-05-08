FROM alpine

RUN apk add openjdk8 \
	&& apk add git \
	&& apk add maven \
	&& git clone https://github.com/Fed333/spring-docker-demo.git \
	&& cd spring-docker-demo \
 	&& mvn clean install \
 	&& mkdir log

WORKDIR ./spring-docker-demo

COPY docker/startup.sh startup.sh

CMD ["/spring-docker-demo/startup.sh"]

EXPOSE 8088