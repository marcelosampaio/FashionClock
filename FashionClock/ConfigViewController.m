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

    // SetUp Scroll
    self.scrollView.scrollEnabled=YES;
    self.scrollView.contentSize=CGSizeMake(260,1595);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    NSLog(@"passed here");
    
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
    
}

#pragma mark - UI Actions
- (IBAction)close:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Status Bar
-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
