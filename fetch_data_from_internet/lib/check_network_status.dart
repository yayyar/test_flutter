import 'dart:io';

class CheckNetworkStatus {
  bool canAccess = true;
  Future<bool> checkNetwork() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
      }
      canAccess = true;
    } on SocketException catch (_) {
      print('not connected');
      canAccess = false;
    }
    return canAccess;
  }
}
