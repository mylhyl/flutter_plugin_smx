import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSm3 {
  static const MethodChannel _channel = const MethodChannel('cyg/flutterSm3');

  static Future<String?> hashHex(String str) async {
    final Map<String, dynamic> params = <String, dynamic>{
      'str': str,
    };
    final String? hex = await _channel.invokeMethod('hashHex', params);
    return hex;
  }
}
