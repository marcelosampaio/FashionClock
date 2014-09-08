//
//  Settings.m
//  FashionClock
//
//  Created by Marcelo Sampaio on 9/2/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "Settings.h"

@implementation Settings

#pragma mark - Default Storage Flag
-(BOOL)defaultStorageFlag {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *flag=[defaults objectForKey:@"defaultStorageFlag"];
    
    if ([flag isEqualToString:@"YES"]) {
        return YES;
    } else {
        return NO;
    }
}
-(void)addDefaultStorageFlag {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"YES" forKey:@"defaultStorageFlag"];
    [defaults synchronize];
}



#pragma mark - General Settings
// Border
-(BOOL)borderIsVisible {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    NSString *flag=[defaults objectForKey:@"borderIsVisible"];
    
    if ([flag isEqualToString:@"YES"]) {
        return YES;
    } else {
        return NO;
    }
}

-(void)addBorderWithValue:(NSString *)value {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:value forKey:@"borderIsVisible"];
    [defaults synchronize];
}

// Digit
-(BOOL)digitIsVisible {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *flag=[defaults objectForKey:@"digitIsVisible"];
    
    if ([flag isEqualToString:@"YES"]) {
        return YES;
    } else {
        return NO;
    }
}

-(void)addDigitWithValue:(NSString *)value {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:value forKey:@"digitIsVisible"];
    [defaults synchronize];
}

// Graduation
-(BOOL)graduationIsVisible {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *flag=[defaults objectForKey:@"graduationIsVisible"];
    
    if ([flag isEqualToString:@"YES"]) {
        return YES;
    } else {
        return NO;
    }
}

-(void)addGraduationWithValue:(NSString *)value {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:value forKey:@"graduationIsVisible"];
    [defaults synchronize];
}

#pragma mark - Background Color
-(UIColor *)backgroundColor {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *redString=[defaults objectForKey:@"backgroundColorRed"];
    NSString *greenString=[defaults objectForKey:@"backgroundColorGreen"];
    NSString *blueString=[defaults objectForKey:@"backgroundColorBlue"];
    NSString *alphaString=[defaults objectForKey:@"backgroundColorAlpha"];
    
    return [UIColor colorWithRed:[redString floatValue] green:[greenString floatValue] blue:[blueString floatValue] alpha:[alphaString floatValue]];
    
}

-(void)addBackgroundColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSString stringWithFormat:@"%f",red] forKey:@"backgroundColorRed"];
    [defaults setObject:[NSString stringWithFormat:@"%f",green] forKey:@"backgroundColorGreen"];
    [defaults setObject:[NSString stringWithFormat:@"%f",blue] forKey:@"backgroundColorBlue"];
    [defaults setObject:[NSString stringWithFormat:@"%f",alpha] forKey:@"backgroundColorAlpha"];
    
    [defaults synchronize];
    
}

#pragma mark - Clock Face Color
-(UIColor *)clockFaceColor {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *redString=[defaults objectForKey:@"clockFaceColorRed"];
    NSString *greenString=[defaults objectForKey:@"clockFaceColorGreen"];
    NSString *blueString=[defaults objectForKey:@"clockFaceColorBlue"];
    NSString *alphaString=[defaults objectForKey:@"clockFaceColorAlpha"];
    
    return [UIColor colorWithRed:[redString floatValue] green:[greenString floatValue] blue:[blueString floatValue] alpha:[alphaString floatValue]];
    
}
-(float)clockFaceAlpha {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [[defaults objectForKey:@"clockFaceColorAlpha"]floatValue];
}

-(void)addClockFaceColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSString stringWithFormat:@"%f",red] forKey:@"clockFaceColorRed"];
    [defaults setObject:[NSString stringWithFormat:@"%f",green] forKey:@"clockFaceColorGreen"];
    [defaults setObject:[NSString stringWithFormat:@"%f",blue] forKey:@"clockFaceColorBlue"];
    [defaults setObject:[NSString stringWithFormat:@"%f",alpha] forKey:@"clockFaceColorAlpha"];
    
    [defaults synchronize];
    
}

#pragma mark - Clock Border Color
-(UIColor *)clockBorderColor {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *redString=[defaults objectForKey:@"clockBorderColorRed"];
    NSString *greenString=[defaults objectForKey:@"clockBorderColorGreen"];
    NSString *blueString=[defaults objectForKey:@"clockBorderColorBlue"];
    NSString *alphaString=[defaults objectForKey:@"clockBorderColorAlpha"];
    
    return [UIColor colorWithRed:[redString floatValue] green:[greenString floatValue] blue:[blueString floatValue] alpha:[alphaString floatValue]];
    
}

-(void)addClockBorderColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSString stringWithFormat:@"%f",red] forKey:@"clockBorderColorRed"];
    [defaults setObject:[NSString stringWithFormat:@"%f",green] forKey:@"clockBorderColorGreen"];
    [defaults setObject:[NSString stringWithFormat:@"%f",blue] forKey:@"clockBorderColorBlue"];
    [defaults setObject:[NSString stringWithFormat:@"%f",alpha] forKey:@"clockBorderColorAlpha"];
    
    [defaults synchronize];
    
}


#pragma mark - Digit Color
-(UIColor *)digitColor {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *redString=[defaults objectForKey:@"digitColorRed"];
    NSString *greenString=[defaults objectForKey:@"digitColorGreen"];
    NSString *blueString=[defaults objectForKey:@"digitColorBlue"];
    NSString *alphaString=[defaults objectForKey:@"digitColorAlpha"];
    
    return [UIColor colorWithRed:[redString floatValue] green:[greenString floatValue] blue:[blueString floatValue] alpha:[alphaString floatValue]];
    
}

-(void)addDigitColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSString stringWithFormat:@"%f",red] forKey:@"digitColorRed"];
    [defaults setObject:[NSString stringWithFormat:@"%f",green] forKey:@"digitColorGreen"];
    [defaults setObject:[NSString stringWithFormat:@"%f",blue] forKey:@"digitColorBlue"];
    [defaults setObject:[NSString stringWithFormat:@"%f",alpha] forKey:@"digitColorAlpha"];
    
    [defaults synchronize];
    
}

#pragma mark - Graduation
-(int)debugValue {
    return 9999;
}
-(UIColor *)graduationColor {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *redString=[defaults objectForKey:@"graduationColorRed"];
    NSString *greenString=[defaults objectForKey:@"graduationColorGreen"];
    NSString *blueString=[defaults objectForKey:@"graduationColorBlue"];
    NSString *alphaString=[defaults objectForKey:@"graduationColorAlpha"];

    return [UIColor colorWithRed:[redString floatValue] green:[greenString floatValue] blue:[blueString floatValue] alpha:[alphaString floatValue]];
    
}

-(void)addGraduationColorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSString stringWithFormat:@"%f",red] forKey:@"graduationColorRed"];
    [defaults setObject:[NSString stringWithFormat:@"%f",green] forKey:@"graduationColorGreen"];
    [defaults setObject:[NSString stringWithFormat:@"%f",blue] forKey:@"graduationColorBlue"];
    [defaults setObject:[NSString stringWithFormat:@"%f",alpha] forKey:@"graduationColorAlpha"];
    
    [defaults synchronize];
    
}


@end
