import 'dart:async';

import 'package:flutter/services.dart';

import 'common.dart';

class Logger {
  static const MethodChannel _channel = const MethodChannel('akash');

  static Future<Null> Log(String message) async {
    Map<String, dynamic> arg = <String, dynamic>{};
    arg.putIfAbsent("message", () => message);
    await _channel.invokeMethod(Com.log, arg);
  }
}
