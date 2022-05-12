FROM gradle:jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM openjdk:11-jre-slim
ENV ENVIRONMENT=${ENVIRONMENT}
EXPOSE 8081
RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/*.jar casoestudio.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=${ENVIRONMENT}", "-jar", "casoestudio.jar"]