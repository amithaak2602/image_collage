import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'imagecollage_platform_interface.dart';

/// An implementation of [ImagecollagePlatform] that uses method channels.
class MethodChannelImagecollage extends ImagecollagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('imagecollage');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
