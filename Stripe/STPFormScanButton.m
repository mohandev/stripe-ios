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
    STPFormScanButton *scanBtn = [[STPFormScanButton alloc] initWithFrame:CGRectMake(0, 0, 45.0, 45.0)];
    [scanBtn setImage:[UIImage imageNamed:@"icon-scan-card"] forState:UIControlStateNormal];
    scanBtn.contentMode = UIViewContentModeCenter;
    
    return scanBtn;
}

@end
