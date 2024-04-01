import 'package:flutter_test/flutter_test.dart';
import 'package:imagecollage/imagecollage.dart';
import 'package:imagecollage/imagecollage_platform_interface.dart';
import 'package:imagecollage/imagecollage_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockImagecollagePlatform
    with MockPlatformInterfaceMixin
    implements ImagecollagePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ImagecollagePlatform initialPlatform = ImagecollagePlatform.instance;

  test('$MethodChannelImagecollage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelImagecollage>());
  });

  test('getPlatformVersion', () async {
    ImageCollage imagecollagePlugin = Imagecollage();
    MockImagecollagePlatform fakePlatform = MockImagecollagePlatform();
    ImagecollagePlatform.instance = fakePlatform;

    expect(await imagecollagePlugin.getPlatformVersion(), '42');
  });
}
