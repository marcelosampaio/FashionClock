//
//  ConfigViewController.m
//  FashionClock
//
//  Created by Marcelo Sampaio on 9/2/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ConfigViewController.h"

@interface ConfigViewController ()

@end

@implementation ConfigViewController
@synthesize scrollView;
@synthesize leftPane,pane00,pane01,pane02;
@synthesize generalBorders,generalDigits,generalGraduation;

#pragma mark - Initialization
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Settings
    self.settings=[[Settings alloc]init];
    
    // SetUp Scroll
    self.scrollView.scrollEnabled=YES;
    self.scrollView.contentSize=CGSizeMake(260,1595);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;

    self.view.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    self.leftPane.backgroundColor=DEFAULT_APP_BACKGROUND_COLOR;
    // Panes
    self.pane00.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane01.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane02.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    // General Settings Swtiches
    self.generalBorders.tintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    self.generalBorders.thumbTintColor=DEFAULT_APP_BACKGROUND_COLOR;
    self.generalBorders.onTintColor=DEFAULT_APP_BACKGROUND_COLOR_LIGHT;
    
    self.generalDigits.tintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    self.generalDigits.thumbTintColor=DEFAULT_APP_BACKGROUND_COLOR;
    self.generalDigits.onTintColor=DEFAULT_APP_BACKGROUND_COLOR_LIGHT;
    
    self.generalGraduation.tintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    self.generalGraduation.thumbTintColor=DEFAULT_APP_BACKGROUND_COLOR;
    self.generalGraduation.onTintColor=DEFAULT_APP_BACKGROUND_COLOR_LIGHT;
    
    // Populate Controls with sotred data
    [self populateControls];
    
}

#pragma mark - UI Actions
- (IBAction)close:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)changedBorder:(id)sender {
    if (self.generalBorders.isOn) {
        [self.settings addBorderWithValue:@"YES"];
    } else {
        [self.settings addBorderWithValue:@"NO"];
    }
}

- (IBAction)changedDigit:(id)sender {
    if (self.generalDigits.isOn) {
        [self.settings addDigitWithValue:@"YES"];
    } else {
        [self.settings addDigitWithValue:@"NO"];
    }
}

- (IBAction)changedGraduation:(id)sender {
    if (self.generalGraduation.isOn) {
        [self.settings addGraduationWithValue:@"YES"];
    } else {
        [self.settings addGraduationWithValue:@"NO"];
    }
}

#pragma mark - Working Methods
-(void)populateControls {
    // General Settings
    self.generalBorders.on=[self.settings borderIsVisible];
    self.generalDigits.on=[self.settings digitIsVisible];
    self.generalGraduation.on=[self.settings graduationIsVisible];
}

#pragma mark - Status Bar
-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
