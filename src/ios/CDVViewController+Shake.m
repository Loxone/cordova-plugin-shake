//
//  CDVViewController+Shake.m
//  
//
//  Created by David Gölzhäuser on 03.05.21.
//

#import "CDVViewController+Shake.h"

@implementation CDVViewController (Shake)

// added by cordova-plugin-shake
- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent*)event {
    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"CDVShakeDeviceShaken" object:self];
    }
}

@end
