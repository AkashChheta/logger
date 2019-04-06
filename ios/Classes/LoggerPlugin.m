#import "LoggerPlugin.h"
#import <logger/logger-Swift.h>

@implementation LoggerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLoggerPlugin registerWithRegistrar:registrar];
}
@end
