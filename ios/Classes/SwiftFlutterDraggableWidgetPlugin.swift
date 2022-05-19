import Flutter
import UIKit

public class SwiftFlutterDraggableWidgetPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_draggable_widget", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterDraggableWidgetPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
