FROM eclipse-temurin:23-jre

ADD target/ConfigsService.jar /ConfigsService.jar
ADD docker/collector/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar

ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar -jar /ConfigsService.jar
