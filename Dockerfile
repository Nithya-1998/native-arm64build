FROM openjdk:8
EXPOSE 8080
ADD target/secretdemo-quarkus-1.0.0-SNAPSHOT-runner.exe secretdemo-quarkus-1.0.0-SNAPSHOT-runner.exe
ENTRYPOINT ["java","-exe","/secretdemo-quarkus-1.0.0-SNAPSHOT-runner.exe"]
