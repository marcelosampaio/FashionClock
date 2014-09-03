//
//  ViewController.m
//  FashionClock
//
//  Created by Marcelo Sampaio on 9/1/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize settings;


#pragma mark - View Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];

    // Settings Object
    self.settings=[[Settings alloc]init];
    // Default Values
    [self defaultValues];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // Navigation bar
    [self.navigationController.navigationBar setHidden:YES];
    // Default values
}

#pragma mark - Working Methods
-(void)defaultValues {
    // Default values to be stored in NSUserDefaults
    if (![self.settings defaultStorageFlag]) {
        [self.settings addDefaultStorageFlag];
        // Store General Settings - Clock Border, Digit & Graduation
        [self.settings addBorderWithValue:@"YES"];
        [self.settings addDigitWithValue:@"YES"];
        [self.settings addGraduationWithValue:@"YES"];
    }

    // app background color
    self.view.backgroundColor=DEFAULT_APP_BACKGROUND_COLOR;
    
}

#pragma mark - Status Bar
-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
