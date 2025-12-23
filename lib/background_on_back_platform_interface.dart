import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'background_on_back_method_channel.dart';

abstract class BackgroundOnBackPlatform extends PlatformInterface {
  /// Constructs a BackgroundOnBackPlatform.
  BackgroundOnBackPlatform() : super(token: _token);

  static final Object _token = Object();

  static BackgroundOnBackPlatform _instance = MethodChannelBackgroundOnBack();

  /// The default instance of [BackgroundOnBackPlatform] to use.
  ///
  /// Defaults to [MethodChannelBackgroundOnBack].
  static BackgroundOnBackPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BackgroundOnBackPlatform] when
  /// they register themselves.
  static set instance(BackgroundOnBackPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> moveToBackground() {
    throw UnimplementedError('moveToBackground() has not been implemented.');
  }
}
