#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import "Utils.h"

@interface TwilioVideoWebrtcProViewManager : RCTViewManager
@end

@implementation TwilioVideoWebrtcProViewManager

RCT_EXPORT_MODULE(TwilioVideoWebrtcProView)

- (UIView *)view
{
  return [[UIView alloc] init];
}

RCT_CUSTOM_VIEW_PROPERTY(color, NSString, UIView)
{
  [view setBackgroundColor: [Utils hexStringToColor:json]];
}

@end
