
import 'dart:async';

import 'package:flutter/services.dart';

class ColorSelector {
  static const MethodChannel _channel =
      const MethodChannel('color_selector');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
