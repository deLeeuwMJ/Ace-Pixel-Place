FROM adoptopenjdk/openjdk16:latest
COPY entrypoint.d/ /entrypoint.d
ENTRYPOINT [ "/bin/run-parts", "--exit-on-error", "/entrypoint.d" ]
