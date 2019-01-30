// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:io';

import 'package:http_server/http_server.dart';

void main() {
  var webFiles = new VirtualDirectory('web');

  runZoned(() {
    HttpServer.bind('0.0.0.0', 8080).then((server) {
      server.listen((request) {
        if (request.uri.path == '/') {
          request.response.redirect(request.uri.resolve('/index.html'));
        } else if (request.uri.path == '/version') {
          request.response.headers..contentType = ContentType.text;
          request.response
            ..writeln('Dart version: ${Platform.version}')
            ..writeln('Dart executable: ${Platform.executable}')
            ..writeln('Dart executable arguments: '
                '${Platform.executableArguments}')
            ..close();
        } else {
          webFiles.serveRequest(request);
        }
      });
    });
  }, onError: (e, stackTrace) {
    print('Error processing request $e\n$stackTrace');
  });
}
