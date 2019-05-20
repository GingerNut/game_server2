// Copyright (c) 2016, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.import '../chat_example/lib/server/http_server_connection.dart';


import 'package:game_server2/server/http_server_connection.dart';

import '../chat_example/lib/server/resource_server.dart';
import '../chat_example/lib/server/server.dart';

void main() {
  final server = Server();
  ResourceServer().start(
      (webSocket) => server.addConnection(HttpServerConnection(webSocket)));
}
