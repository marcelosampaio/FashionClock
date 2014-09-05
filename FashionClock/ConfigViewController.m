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
@synthesize backgroundAlpha,backgroundBlue,backgroundGreen,backgroundPreview,backgroundRed;
@synthesize clockFaceAlpha,clockFaceBlue,clockFaceGreen,clockFacePreview,clockFaceRed;


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
    
    [self setUp];
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
-(void)setUp {
    // Settings
    self.settings=[[Settings alloc]init];
    
    // SetUp Scroll
    self.scrollView.scrollEnabled=YES;
    self.scrollView.contentSize=CGSizeMake(260,1595);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    self.view.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    self.leftPane.backgroundColor=[self.settings backgroundColor];
    // Panes
    self.pane00.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane01.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane02.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane03.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane04.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    // General Settings Swtiches
    self.generalBorders.tintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    //    self.generalBorders.thumbTintColor=[self.settings backgroundColor];
    self.generalBorders.onTintColor=DEFAULT_APP_BACKGROUND_COLOR_LIGHT;
    
    self.generalDigits.tintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    //    self.generalDigits.thumbTintColor=[self.settings backgroundColor];
    self.generalDigits.onTintColor=DEFAULT_APP_BACKGROUND_COLOR_LIGHT;
    
    self.generalGraduation.tintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    //    self.generalGraduation.thumbTintColor=[self.settings backgroundColor];
    self.generalGraduation.onTintColor=DEFAULT_APP_BACKGROUND_COLOR_LIGHT;
    
    // Background Color Sliders
    self.backgroundRed.minimumTrackTintColor=[UIColor redColor];
    self.backgroundRed.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.backgroundGreen.minimumTrackTintColor=[UIColor greenColor];
    self.backgroundGreen.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.backgroundBlue.minimumTrackTintColor=[UIColor blueColor];
    self.backgroundBlue.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.backgroundAlpha.minimumTrackTintColor=[UIColor lightGrayColor];
    self.backgroundAlpha.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    // Clock Face Color Sliders
    self.clockFaceRed.minimumTrackTintColor=[UIColor redColor];
    self.clockFaceRed.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.clockFaceGreen.minimumTrackTintColor=[UIColor greenColor];
    self.clockFaceGreen.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.clockFaceBlue.minimumTrackTintColor=[UIColor blueColor];
    self.clockFaceBlue.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.clockFaceAlpha.minimumTrackTintColor=[UIColor lightGrayColor];
    self.clockFaceAlpha.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    
    
    // Populate Controls with stored data
    [self populateControls];

}


-(void)populateControls {
    // General Settings
    self.generalBorders.on=[self.settings borderIsVisible];
    self.generalDigits.on=[self.settings digitIsVisible];
    self.generalGraduation.on=[self.settings graduationIsVisible];
    
    // Background Colors
    CGFloat red, green, blue, alpha;
    UIColor *backgroundColor=[self.settings backgroundColor];

    [backgroundColor getRed: &red green:&green blue:&blue alpha:&alpha];
    
    self.backgroundRed.value=red;
    self.backgroundGreen.value=green;
    self.backgroundBlue.value=blue;
    self.backgroundAlpha.value=alpha;
    self.backgroundPreview.backgroundColor=backgroundColor;
    
    // Clock Face Colors
    UIColor *clockFaceColor=[self.settings clockFaceColor];
    [clockFaceColor getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.clockFaceRed.value=red;
    self.clockFaceGreen.value=green;
    self.clockFaceBlue.value=blue;
    self.clockFaceAlpha.value=alpha;
    self.clockFacePreview.backgroundColor=clockFaceColor;
    
    
    
    

}

#pragma mark - Status Bar
-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
