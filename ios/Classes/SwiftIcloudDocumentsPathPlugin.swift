import Flutter
import UIKit

public class SwiftICloudDocumentsPathPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "icloud_documents_path", binaryMessenger: registrar.messenger())
    let instance = SwiftICloudDocumentsPathPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let driveURL = FileManager.default.url(forUbiquityContainerIdentifier: nil)?.appendingPathComponent("Documents")
    if let url = driveURL {
      result(url.path)
    } else {
      result("")
    }
  }
}
