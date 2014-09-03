//
//  Settings.h
//  FashionClock
//
//  Created by Marcelo Sampaio on 9/2/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <Foundation/Foundation.h>

// App Constants
//      - Colors
#define DEFAULT_APP_BACKGROUND_COLOR                    [UIColor colorWithRed:0.05f green:0.50f blue:0.20f alpha:1]
#define DEFAULT_APP_BACKGROUND_COLOR_LIGHT              [UIColor colorWithRed:0.25f green:0.70f blue:0.40f alpha:1]
#define DEFAULT_APP_DETAIL_COLOR                        [UIColor whiteColor]
#define DEFAULT_SETTINGS_BACKGROUND_COLOR               [UIColor colorWithRed:0.55f green:0.00f blue:0.00f alpha:1]
#define DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK          [UIColor colorWithRed:0.40f green:0.00f blue:0.00f alpha:1]


@interface Settings : NSObject

// Defalut Storage Flag
-(BOOL)defaultStorageFlag;
-(void)addDefaultStorageFlag;

// General Settings - Border
-(BOOL)borderIsVisible;
-(void)addBorderWithValue:(NSString *)value;
// General Settings - Digit
-(BOOL)digitIsVisible;
-(void)addDigitWithValue:(NSString *)value;
// General Settings - Graduation
-(BOOL)graduationIsVisible;
-(void)addGraduationWithValue:(NSString *)value;

@end
