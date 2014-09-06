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
@synthesize leftPane,pane00,pane01,pane02,pane03,pane04,pane05,pane06,pane07;
@synthesize generalBorders,generalDigits,generalGraduation;
@synthesize backgroundAlpha,backgroundBlue,backgroundGreen,backgroundPreview,backgroundRed;
@synthesize clockFaceAlpha,clockFaceBlue,clockFaceGreen,clockFacePreview,clockFaceRed;
@synthesize clockBorderAlpha,clockBorderBlue,clockBorderGreen,clockBorderPreview,clockBorderRed;
@synthesize digitAlpha,digitBlue,digitGreen,digitPreview,digitRed;
@synthesize graduationAlpha,graduationBlue,graduationGreen,graduationRed,graduationPreview;

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


#pragma mark - Working Methods
-(void)setUp {
    // Settings
    self.settings=[[Settings alloc]init];
    
    // SetUp Scroll
    self.scrollView.scrollEnabled=YES;
    self.scrollView.contentSize=CGSizeMake(260,3000);
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    self.view.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR;
    self.leftPane.backgroundColor=[self.settings backgroundColor];
    
    // Panes
    self.pane00.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane01.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane02.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane03.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane04.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane05.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane06.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    self.pane07.backgroundColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
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
    
    // Clock Border Color Sliders
    self.clockBorderRed.minimumTrackTintColor=[UIColor redColor];
    self.clockBorderRed.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.clockBorderGreen.minimumTrackTintColor=[UIColor greenColor];
    self.clockBorderGreen.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.clockBorderBlue.minimumTrackTintColor=[UIColor blueColor];
    self.clockBorderBlue.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.clockBorderAlpha.minimumTrackTintColor=[UIColor lightGrayColor];
    self.clockBorderAlpha.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    // Digit Color Sliders
    self.digitRed.minimumTrackTintColor=[UIColor redColor];
    self.digitRed.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.digitGreen.minimumTrackTintColor=[UIColor greenColor];
    self.digitGreen.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.digitBlue.minimumTrackTintColor=[UIColor blueColor];
    self.digitBlue.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.digitAlpha.minimumTrackTintColor=[UIColor lightGrayColor];
    self.digitAlpha.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    // Graduation Color Sliders
    self.graduationRed.minimumTrackTintColor=[UIColor redColor];
    self.graduationRed.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.graduationGreen.minimumTrackTintColor=[UIColor greenColor];
    self.graduationGreen.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.graduationBlue.minimumTrackTintColor=[UIColor blueColor];
    self.graduationBlue.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    self.graduationAlpha.minimumTrackTintColor=[UIColor lightGrayColor];
    self.graduationAlpha.maximumTrackTintColor=DEFAULT_SETTINGS_BACKGROUND_COLOR_DARK;
    
    
    
    
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
    
    // Clock Border Colors
    UIColor *clockBorderColor=[self.settings clockBorderColor];
    [clockBorderColor getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.clockBorderRed.value=red;
    self.clockBorderGreen.value=green;
    self.clockBorderBlue.value=blue;
    self.clockBorderAlpha.value=alpha;
    self.clockBorderPreview.backgroundColor=clockBorderColor;
    
    // Digit Colors
    UIColor *digitColor=[self.settings digitColor];
    [digitColor getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.digitRed.value=red;
    self.digitGreen.value=green;
    self.digitBlue.value=blue;
    self.digitAlpha.value=alpha;
    self.digitPreview.backgroundColor=digitColor;
    
    // Graduation Colors
    UIColor *graduationColor=[self.settings graduationColor];
    [graduationColor getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.graduationRed.value=red;
    self.graduationGreen.value=green;
    self.graduationBlue.value=blue;
    self.graduationAlpha.value=alpha;
    self.graduationPreview.backgroundColor=graduationColor;
    
}

- (IBAction)close:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - General Settings
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

#pragma mark - Background Sliders
- (IBAction)changedBackgroundRed:(id)sender {
    [self updateBackgroundPreview];
}

- (IBAction)changedBackgroundGreen:(id)sender {
    [self updateBackgroundPreview];
}

- (IBAction)changedBackgroundBlue:(id)sender {
    [self updateBackgroundPreview];
}

- (IBAction)changedBackgroundAlpha:(id)sender {
    [self updateBackgroundPreview];
}


-(void)updateBackgroundPreview {
    UIColor *newColor=[UIColor colorWithRed:self.backgroundRed.value green:self.backgroundGreen.value blue:self.backgroundBlue.value alpha:self.backgroundAlpha.value];
    
    // Update Preview
    self.backgroundPreview.backgroundColor=newColor;
    self.leftPane.backgroundColor=newColor;
    // Update Settings
    [self.settings addBackgroundColorWithRed:self.backgroundRed.value green:self.backgroundGreen.value blue:self.backgroundBlue.value alpha:self.backgroundAlpha.value];
}


#pragma mark - Clock Face Color Sliders
- (IBAction)changedClockFaceRed:(id)sender {
    [self updateClockFacePreview];
}

- (IBAction)changedClockFaceGreen:(id)sender {
    [self updateClockFacePreview];
}

- (IBAction)changedClockFaceBlue:(id)sender {
    [self updateClockFacePreview];
}

- (IBAction)changedClockFaceAlpha:(id)sender {
    [self updateClockFacePreview];
}

-(void)updateClockFacePreview {
    UIColor *newColor=[UIColor colorWithRed:self.clockFaceRed.value green:self.clockFaceGreen.value blue:self.clockFaceBlue.value alpha:self.clockFaceAlpha.value];
    
    // Update Preview
    self.clockFacePreview.backgroundColor=newColor;

    // Update Settings
    [self.settings addClockFaceColorWithRed:self.clockFaceRed.value green:self.clockFaceGreen.value blue:self.clockFaceBlue.value alpha:self.clockFaceAlpha.value];
}


#pragma mark - Clock Border Color Sliders
- (IBAction)changedClockBorderRed:(id)sender {
    [self updateClockBorderPreview];
}

- (IBAction)changedClockBorderGreen:(id)sender {
    [self updateClockBorderPreview];
}

- (IBAction)changedClockBorderBlue:(id)sender {
    [self updateClockBorderPreview];
}

- (IBAction)changedClockBorderAlpha:(id)sender {
    [self updateClockBorderPreview];
}

-(void)updateClockBorderPreview {
    UIColor *newColor=[UIColor colorWithRed:self.clockBorderRed.value green:self.clockBorderGreen.value blue:self.clockBorderBlue.value alpha:self.clockBorderAlpha.value];
    
    // Update Preview
    self.clockBorderPreview.backgroundColor=newColor;
    
    // Update Settings
    [self.settings addClockBorderColorWithRed:self.clockBorderRed.value green:self.clockBorderGreen.value blue:self.clockBorderBlue.value alpha:self.clockBorderAlpha.value];
}

#pragma mark - Digit Color Sliders
- (IBAction)changedDigitRed:(id)sender {
    [self updateDigitPreview];
}

- (IBAction)changedDigitGreen:(id)sender {
    [self updateDigitPreview];
}

- (IBAction)changedDigitBlue:(id)sender {
    [self updateDigitPreview];
}

- (IBAction)changedDigitAlpha:(id)sender {
    [self updateDigitPreview];
}

-(void)updateDigitPreview {
    UIColor *newColor=[UIColor colorWithRed:self.digitRed.value green:self.digitGreen.value blue:self.digitBlue.value alpha:self.digitAlpha.value];
    
    // Update Preview
    self.digitPreview.backgroundColor=newColor;
    
    // Update Settings
    [self.settings addDigitColorWithRed:self.digitRed.value green:self.digitGreen.value blue:self.digitBlue.value alpha:self.digitAlpha.value];
}


#pragma mark - Graduation Color Sliders
- (IBAction)changedGraduationRed:(id)sender {
    [self updateGraduationPreview];
}

- (IBAction)changedGraduationGreen:(id)sender {
    [self updateGraduationPreview];
}

- (IBAction)changedGraduationBlue:(id)sender {
    [self updateGraduationPreview];
}

- (IBAction)changedGraduationAlpha:(id)sender {
    [self updateGraduationPreview];
}

-(void)updateGraduationPreview {
    UIColor *newColor=[UIColor colorWithRed:self.graduationRed.value green:self.graduationGreen.value blue:self.graduationBlue.value alpha:self.self.graduationAlpha.value];
    
    // Update Preview
    self.graduationPreview.backgroundColor=newColor;
    
    // Update Settings
    [self.settings addGraduationColorWithRed:self.graduationRed.value green:self.graduationGreen.value blue:self.graduationBlue.value alpha:self.graduationAlpha.value];
}


#pragma mark - Status Bar
-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
