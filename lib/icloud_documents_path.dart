import 'dart:async';

import 'package:flutter/services.dart';

class ICloudDocumentsPath {
  static const MethodChannel _channel =
      const MethodChannel('icloud_documents_path');

  static Future<String> get documentsPath async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
