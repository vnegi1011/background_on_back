
import 'background_on_back_platform_interface.dart';

class BackgroundOnBack {
  static Future<void> pop() {
    return BackgroundOnBackPlatform.instance.moveToBackground();
  }
}
