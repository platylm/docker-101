FROM openjdk:8
WORKDIR /stub
COPY stubby4j-6.0.2.jar .
COPY kerry.yml .
CMD java -jar stubby4j-6.0.2.jar -l 0.0.0.0 -d kerry.yml