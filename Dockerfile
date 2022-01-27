<<<<<<< HEAD
FROM openjdk:8-jre
MAINTAINER David Flemström <dflemstr@spotify.com>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/myservice/myservice.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/lib           /usr/share/myservice/lib
# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/myservice/myservice.jar
=======
FROM openjdk:11-jdk
#MAINTAINER David Flemström <dflemstr@spotify.com>

ENTRYPOINT ["java", "-jar", "testdocker-0.0.1.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/testdocker-0.0.1.jar           testdocker-0.0.1.jar
>>>>>>> 2c83ffb66a50e61e178c30bc7b355b28532ef3bf
