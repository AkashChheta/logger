import Flutter
import UIKit
    
public class SwiftLoggerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "akash", binaryMessenger: registrar.messenger())
    let instance = SwiftLoggerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
  if(call.method.elementsEqual('akashlogger'){
    let arguments =call.arguments as? NSDictionary
    let message = arguments["message"] as? String
    print("akashlogger"+message)
  }
  }
}
