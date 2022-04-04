FROM adoptopenjdk/openjdk16:latest
COPY pxls-1.0-SNAPSHOT.jar /home/pxls-1.0-SNAPSHOT.jar
CMD ["java","-jar","/home/pxls-1.0-SNAPSHOT.jar"]
