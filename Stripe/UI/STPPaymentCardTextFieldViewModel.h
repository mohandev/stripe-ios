//
//  STPPaymentCardTextFieldViewModel.h
//  Stripe
//
//  Created by Jack Flintermann on 7/21/15.
//  Copyright (c) 2015 Stripe, Inc. All rights reserved.
//

@import Foundation;
@import UIKit;

#import "STPCard.h"
#import "STPCardValidator.h"

typedef NS_ENUM(NSInteger, STPCardFieldType) {
    STPCardFieldTypeNumber,
    STPCardFieldTypeExpiration,
    STPCardFieldTypeCVC,
    STPCardFieldTypeZIP
};

@interface STPPaymentCardTextFieldViewModel : NSObject

@property(nonatomic, readwrite, copy, nullable)NSString *cardNumber;
@property(nonatomic, readwrite, copy, nullable)NSString *rawExpiration;
@property(nonatomic, readonly, nullable)NSString *expirationMonth;
@property(nonatomic, readonly, nullable)NSString *expirationYear;
@property(nonatomic, readwrite, copy, nullable)NSString *cvc;
@property (nonatomic, readwrite, copy, nullable) NSString *zip;
@property(nonatomic, readonly) STPCardBrand brand;

- (nonnull NSString *)placeholder;
- (nullable NSString *)numberWithoutLastDigits;

- (BOOL)isValid;

- (STPCardValidationState)validationStateForField:(STPCardFieldType)fieldType;
- (nullable UIImage *)brandImage;
- (nullable UIImage *)cvcImage;

@end
