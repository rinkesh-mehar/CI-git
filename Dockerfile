#FROM 10.1.56.169:8083/jdk-11.0.7
#ADD target/drkjobs-0.0.1.jar Usermanagement-0.0.1.jar
#ENTRYPOINT ["java","-jar","Usermanagement-0.0.1.jar"]


# Start with a base image containing Java runtime
FROM meisterplan/jdk-base:11

# Add Maintainer Info
LABEL maintainer="rinkesh.mehar@cropdata.in"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
#EXPOSE 8082

# The application's jar file
ARG JAR_FILE=target/CI-Git-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} CI-Git-0.0.1-SNAPSHOT.jar

#RUN mkdir -p /home/media/commodityplantpart /home/media/symptoms

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/CI-Git-0.0.1-SNAPSHOT.jar"]








