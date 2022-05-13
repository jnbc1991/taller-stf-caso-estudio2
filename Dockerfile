#FROM gradle:jdk11 AS build
#COPY --chown=gradle:gradle . /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle build --no-daemon

FROM openjdk:11-jre-slim
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} casoestudio.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/casoestudio.jar"]
#EXPOSE 8080
#RUN mkdir /app
#COPY --from=build /home/gradle/src/build/libs/*.jar /casoestudio.jar/
#ENTRYPOINT ["java", "-jar", "/casoestudio.jar"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom"," jar","casoestudio.jar"]
