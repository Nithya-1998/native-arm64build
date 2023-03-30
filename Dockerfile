FROM openjdk:8
EXPOSE 8080
ADD target/secretdemo-quarkus-1.0.0-SNAPSHOT.runner secretdemo-quarkus-1.0.0-SNAPSHOT.runner
ENTRYPOINT ["java","-jar","/secretdemo-quarkus-1.0.0-SNAPSHOT.runner"]
