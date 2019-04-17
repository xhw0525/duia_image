import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class DuiaImage {
  static const MethodChannel _channel =
      const MethodChannel('duia_image');

//  static Future<String> get platformVersion async {
//    final String version = await _channel.invokeMethod('getPlatformVersion');
//    return version;
//  }

  static Future<Image> imageFromPlatform (String imageName) async {
    var version = await _channel.invokeMethod('imageFromPlatform',imageName);
    return Image.memory(version);
  }
}
