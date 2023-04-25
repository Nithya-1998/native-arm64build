# FROM openjdk:8
# EXPOSE 8080
# ADD target/secretdemo-quarkus-1.0.0-SNAPSHOT-runner.exe secretdemo-quarkus-1.0.0-SNAPSHOT-runner.exe
# ENTRYPOINT ["java","-exe","/secretdemo-quarkus-1.0.0-SNAPSHOT-runner.exe"]

FROM oracle/graalvm-ce:20.2.0-java11@sha256:494222b828e6096bd00b16b9626b54665546fc5b60a8080c99be8d29af829638 AS build
RUN gu install native-image
WORKDIR /project
VOLUME ["/project"]
ENTRYPOINT ["native-image"]
