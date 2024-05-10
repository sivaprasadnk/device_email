import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'device_email_method_channel.dart';

abstract class DeviceEmailPlatform extends PlatformInterface {
  /// Constructs a DeviceEmailPlatform.
  DeviceEmailPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceEmailPlatform _instance = MethodChannelDeviceEmail();

  /// The default instance of [DeviceEmailPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceEmail].
  static DeviceEmailPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceEmailPlatform] when
  /// they register themselves.
  static set instance(DeviceEmailPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
