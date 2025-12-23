import 'package:flutter_test/flutter_test.dart';
import 'package:background_on_back/background_on_back_platform_interface.dart';
import 'package:background_on_back/background_on_back_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBackgroundOnBackPlatform
    with MockPlatformInterfaceMixin
    implements BackgroundOnBackPlatform {
  // @override
  // Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> moveToBackground() async {
    return;
  }
}

void main() {
  final BackgroundOnBackPlatform initialPlatform =
      BackgroundOnBackPlatform.instance;

  test('$MethodChannelBackgroundOnBack is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBackgroundOnBack>());
  });

  // test('getPlatformVersion', () async {
  //   BackgroundOnBack backgroundOnBackPlugin = BackgroundOnBack();
  //   MockBackgroundOnBackPlatform fakePlatform = MockBackgroundOnBackPlatform();
  //   BackgroundOnBackPlatform.instance = fakePlatform;

  //   expect(await backgroundOnBackPlugin.getPlatformVersion(), '42');
  // });
}
