FROM debian:buster
RUN mkdir /app
WORKDIR /app 
ADD ./target/*-SNAPSHOT-docker.tar.gz /app/
 
ARG JAR_FILE=target/saber-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

RUN chmod -R 777 /app

FROM openjdk:11-buster
#FROM oracle-jdk:11-buster
ENV TZ Asia/Tehran
RUN mkdir /app
WORKDIR /app
COPY --from=0 /app /app
#ADD target/*.tar.gz /app
RUN useradd -u 10001 user1 && groupadd group1
USER user1:group1

CMD ["java", "-jar", "app.jar"]
#ENTRYPOINT ["java", "-jar", "-Dspring.config.location=config/application.properties", "app.jar"]
