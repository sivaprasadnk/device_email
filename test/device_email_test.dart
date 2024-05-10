import 'package:flutter_test/flutter_test.dart';
import 'package:device_email/device_email.dart';
import 'package:device_email/device_email_platform_interface.dart';
import 'package:device_email/device_email_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceEmailPlatform
    with MockPlatformInterfaceMixin
    implements DeviceEmailPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeviceEmailPlatform initialPlatform = DeviceEmailPlatform.instance;

  test('$MethodChannelDeviceEmail is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeviceEmail>());
  });

  test('getPlatformVersion', () async {
    DeviceEmail deviceEmailPlugin = DeviceEmail();
    MockDeviceEmailPlatform fakePlatform = MockDeviceEmailPlatform();
    DeviceEmailPlatform.instance = fakePlatform;

    expect(await deviceEmailPlugin.getPlatformVersion(), '42');
  });
}
