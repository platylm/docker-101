FROM openjdk:8
WORKDIR /web
COPY felix-framework-4.2.1 .
CMD java -jar bin/felix.jar -b web-console