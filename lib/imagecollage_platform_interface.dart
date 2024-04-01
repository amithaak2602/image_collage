import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'imagecollage_method_channel.dart';

abstract class ImagecollagePlatform extends PlatformInterface {
  /// Constructs a ImagecollagePlatform.
  ImagecollagePlatform() : super(token: _token);

  static final Object _token = Object();

  static ImagecollagePlatform _instance = MethodChannelImagecollage();

  /// The default instance of [ImagecollagePlatform] to use.
  ///
  /// Defaults to [MethodChannelImagecollage].
  static ImagecollagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ImagecollagePlatform] when
  /// they register themselves.
  static set instance(ImagecollagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
