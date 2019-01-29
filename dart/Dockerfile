FROM google/dart

WORKDIR /app

RUN pub global activate webdev
ADD pubspec.* /app/
RUN pub get
ADD . /app

CMD []
ENTRYPOINT ["/root/.pub-cache/bin/webdev", "serve"]
