
import 'device_email_platform_interface.dart';

class DeviceEmail {
  Future<String?> getPlatformVersion() {
    return DeviceEmailPlatform.instance.getPlatformVersion();
  }
}
