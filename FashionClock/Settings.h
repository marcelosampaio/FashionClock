//
//  Settings.h
//  FashionClock
//
//  Created by Marcelo Sampaio on 9/2/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <Foundation/Foundation.h>

// App Constants
//      - Colors and their decomposition
#define DEFAULT_APP_BACKGROUND_COLOR                    [UIColor colorWithRed:0.05f green:0.50f blue:0.20f alpha:1.00f]
#define DEFAULT_APP_BACKGROUND_COLOR_RED                0.05f
#define DEFAULT_APP_BACKGROUND_COLOR_GREEN              0.50f
#define DEFAULT_APP_BACKGROUND_COLOR_BLUE               0.20f
#define DEFAULT_APP_BACKGROUND_COLOR_ALPHA              1.00f

#define DEFAULT_CLOCK_FACE_COLOR                        [UIColor colorWithRed:0.05f green:0.50f blue:0.20f alpha:1.00f]
#define DEFAULT_CLOCK_FACE_COLOR_RED                    0.05f
#define DEFAULT_CLOCK_FACE_COLOR_GREEN                  0.50f
#define DEFAULT_CLOCK_FACE_COLOR_BLUE                   0.20f
#define DEFAULT_CLOCK_FACE_COLOR_ALPHA                  1.00f

#define DEFAULT_CLOCK_BORDER_COLOR                      [UIColor colorWithRed:1.00f green:1.00f blue:1.00f alpha:1.00f]
#define DEFAULT_CLOCK_BORDER_COLOR_RED                  1.00f
#define DEFAULT_CLOCK_BORDER_COLOR_GREEN                1.00f
#define DEFAULT_CLOCK_BORDER_COLOR_BLUE                 1.00f
#define DEFAULT_CLOCK_BORDER_COLOR_ALPHA                1.00f


#define DEFAULT_APP_BACKGROUND_COLOR_LIGHT              [UIColor colorWithRed:0.25f green:0.70f blue:0.40f alpha:1]
#define DEFAULT_APP_DETAIL_COLOR                        [UIColor whiteColor]
#define DEFAULT_SETTINGS_BACKGROUND_COLOR               [UIColor colorWithRed:0.55f green:0.00f blue:0.00f alpha:1]
#define DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK          [UIColor colorWithRed:0.40f green:0.00f blue:0.00f alpha:1]

// Measures
#define DEFAULT_CLOCK_SIZE                              200
#define DEFAULT_CLOCK_TAG                               999

@interface Settings : NSObject

// Defalut Storage Flag
-(BOOL)defaultStorageFlag;
-(void)addDefaultStorageFlag;

// ===================== General Settings ==============================
// Border
-(BOOL)borderIsVisible;
-(void)addBorderWithValue:(NSString *)value;
// Digit
-(BOOL)digitIsVisible;
-(void)addDigitWithValue:(NSString *)value;
// Graduation
-(BOOL)graduationIsVisible;
-(void)addGraduationWithValue:(NSString *)value;


// ======================== Background Color =============================
// Get color
-(UIColor *)backgroundColor;
// Set Color
-(void)addBackgroundColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;

// ======================== Clock Face Color =============================
// Get color
-(UIColor *)clockFaceColor;
-(float)clockFaceAlpha;
// Set Color
-(void)addClockFaceColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;


// ======================== Clock Border Color =============================
// Get color
-(UIColor *)clockBorderColor;
// Set Color
-(void)addClockBorderColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;

// ======================== Digit Color =============================
// Get color
-(UIColor *)digitColor;
// Set Color
-(void)addDigitColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;

// ======================== Graduation Color =============================
// Debug parameter
-(int)debugValue;
// Get color
-(UIColor *)graduationColor;
// Set Color
-(void)addGraduationColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;

@end
