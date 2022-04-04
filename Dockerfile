FROM adoptopenjdk/openjdk16:latest
RUN set -eux; \
  apt-get update; \
  apt-get -y install git curl; \
  git clone https://github.com/deLeeuwMJ/AcePlace.git; \
COPY pxls-1.0-SNAPSHOT.jar /pxls.jar
COPY entrypoint.d/ /entrypoint.d
HEALTHCHECK CMD curl --fail http://localhost:4567/||exit 1
ENTRYPOINT [ "/bin/run-parts", "--exit-on-error", "/entrypoint.d" ]
