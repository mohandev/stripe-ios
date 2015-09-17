//
//  STPFormScanButton.m
//  Stripe
//
//  Created by Mohanraj K R on 17/09/15.
//  Copyright © 2015 Stripe, Inc. All rights reserved.
//

#import "STPFormScanButton.h"

@implementation STPFormScanButton

+ (instancetype)formScanButton {
    STPFormScanButton *scanBtn = [STPFormScanButton buttonWithType:UIButtonTypeCustom];
    scanBtn.contentMode = UIViewContentModeRight;
    
    [scanBtn setImage:[self safeImageNamed:@"icon-scan-card"] forState:UIControlStateNormal];
    
    return scanBtn;
}

+ (UIImage *)safeImageNamed:(NSString *)imageName {
    if ([[UIImage class] respondsToSelector:@selector(imageNamed:inBundle:compatibleWithTraitCollection:)]) {
        return [UIImage imageNamed:imageName inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
    }
    return [UIImage imageNamed:imageName];
}

@end
