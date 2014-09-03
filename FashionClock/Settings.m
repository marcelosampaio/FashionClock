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


@end
