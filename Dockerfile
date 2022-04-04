FROM adoptopenjdk/openjdk16:latest
RUN set -eux; \
  apt-get update; \
COPY pxls-1.0-SNAPSHOT.jar /pxls.jar
COPY entrypoint.d/ /entrypoint.d
ENTRYPOINT [ "/bin/run-parts", "--exit-on-error", "/entrypoint.d" ]
