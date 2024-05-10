import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_email_platform_interface.dart';

/// An implementation of [DeviceEmailPlatform] that uses method channels.
class MethodChannelDeviceEmail extends DeviceEmailPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_email');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
