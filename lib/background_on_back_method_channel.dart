import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'background_on_back_platform_interface.dart';

/// An implementation of [BackgroundOnBackPlatform] that uses method channels.
class MethodChannelBackgroundOnBack extends BackgroundOnBackPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('background_on_back');

  @override
  Future<void> moveToBackground() async {
    try {
      await methodChannel.invokeMethod<String>('moveToBackground');
    } catch (e) {
      debugPrint('$e');
    }
    return;
  }
}
