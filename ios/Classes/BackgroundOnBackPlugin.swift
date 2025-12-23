import Flutter
import UIKit

public class BackgroundOnBackPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "background_on_back", binaryMessenger: registrar.messenger())
    let instance = BackgroundOnBackPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "moveToBackground":
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
