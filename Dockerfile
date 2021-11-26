FROM openjdk:11-jdk
#MAINTAINER David Flemström <dflemstr@spotify.com>

ENTRYPOINT ["java", "-jar", "testdocker-0.0.1.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/testdocker-0.0.1.jar           testdocker-0.0.1.jar