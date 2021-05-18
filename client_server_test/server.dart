import 'dart:io';

Future main() async {
  var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
  print('Listening on localhost:${server.port}');
  print('Address: ${server.address}');

  await for (HttpRequest request in server) {
    request.response
      ..write('Hello World!')
      ..close();
  }
}
