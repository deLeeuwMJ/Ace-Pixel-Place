FROM adoptopenjdk/openjdk16:latest
RUN set -eux; \
  apt-get update; \
  apt-get -y install git curl; \
  git clone https://github.com/deLeeuwMJ/AcePlace.git; \
  cd AcePlace/; \
  addgroup \
    pxls; \
  adduser \
    --disabled-password \
    --gecos "" \
    --home /Pxls \
    --ingroup pxls \
    --uid 6969 \
    pxls; \
    ls -l target; \
  chown pxls:pxls /AcePlace -R
USER pxls
WORKDIR /AcePlace
COPY entrypoint.d/ /entrypoint.d
HEALTHCHECK CMD curl --fail http://localhost:4567/||exit 1
ENTRYPOINT [ "/bin/run-parts", "--exit-on-error", "/entrypoint.d" ]
