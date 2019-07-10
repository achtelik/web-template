FROM openjdk:12-jdk-alpine as build
WORKDIR /workspace/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw install -DskipTests
RUN mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)

FROM openjdk:12-jdk-alpine
VOLUME /tmp
ARG TARGET=/workspace/app/target
COPY --from=build ${TARGET}/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
