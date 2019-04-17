#import "DuiaImagePlugin.h"

@implementation DuiaImagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"duia_image"
            binaryMessenger:[registrar messenger]];
  DuiaImagePlugin* instance = [[DuiaImagePlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"imageFromPlatform" isEqualToString:call.method]) {
      NSString *imageName = call.arguments;
      UIImage *image = [UIImage imageNamed:imageName];
      NSData *imageData = UIImagePNGRepresentation(image);
      result(imageData);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
