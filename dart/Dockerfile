FROM google/dart-runtime

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app

CMD []
ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]
