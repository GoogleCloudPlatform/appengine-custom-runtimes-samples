FROM google/dart-runtime

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
ENV PORT 8080

CMD []
ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]
