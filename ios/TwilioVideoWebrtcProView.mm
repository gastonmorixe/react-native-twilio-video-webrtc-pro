#ifdef RCT_NEW_ARCH_ENABLED
#import "TwilioVideoWebrtcProView.h"

#import <ComponentDescriptors.h>
#import <EventEmitters.h>
#import <Props.h>
#import <RCTComponentViewHelpers.h>
//#import <react/renderer/components/RNTwilioVideoWebrtcProViewSpec/ComponentDescriptors.h>
//#import <react/renderer/components/RNTwilioVideoWebrtcProViewSpec/EventEmitters.h>
//#import <react/renderer/components/RNTwilioVideoWebrtcProViewSpec/Props.h>
//#import <react/renderer/components/RNTwilioVideoWebrtcProViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface TwilioVideoWebrtcProView () <RCTTwilioVideoWebrtcProViewViewProtocol>

@end

@implementation TwilioVideoWebrtcProView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<TwilioVideoWebrtcProViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const TwilioVideoWebrtcProViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<TwilioVideoWebrtcProViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<TwilioVideoWebrtcProViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> TwilioVideoWebrtcProViewCls(void)
{
    return TwilioVideoWebrtcProView.class;
}

@end
#endif
