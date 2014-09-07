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
    // Store and Load Default Values
    [self defaultValues];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    // Navigation bar
    [self.navigationController.navigationBar setHidden:YES];
    
    // Debug before addind clock to the UI
    NSLog(@"clockBorderColor=%@",[self.settings clockBorderColor]);
    NSLog(@"digitColor=%@",[self.settings digitColor]);
    NSLog(@"graduationColor=%@",[self.settings graduationColor]);
    
    // Load clock to UI
    [self analogClock];
    
}

#pragma mark - Working Methods
-(void)defaultValues {
    // One time procedure - load all defaults values for the first time only!!!
    if (![self.settings defaultStorageFlag]) {
        // Flag system in order to say "defaults loaded OK"
        [self.settings addDefaultStorageFlag];
        // Store General Settings - Clock Border, Digit & Graduation
        [self.settings addBorderWithValue:@"YES"];
        [self.settings addDigitWithValue:@"YES"];
        [self.settings addGraduationWithValue:@"YES"];
        [self.settings addBackgroundColorWithRed:DEFAULT_APP_BACKGROUND_COLOR_RED green:DEFAULT_APP_BACKGROUND_COLOR_GREEN blue:DEFAULT_APP_BACKGROUND_COLOR_BLUE alpha:DEFAULT_APP_BACKGROUND_COLOR_ALPHA];
        [self.settings addClockFaceColorWithRed:DEFAULT_CLOCK_FACE_COLOR_RED green:DEFAULT_CLOCK_FACE_COLOR_GREEN blue:DEFAULT_CLOCK_FACE_COLOR_BLUE alpha:DEFAULT_CLOCK_FACE_COLOR_ALPHA];
        [self.settings addClockBorderColorWithRed:DEFAULT_CLOCK_BORDER_COLOR_RED green:DEFAULT_CLOCK_BORDER_COLOR_GREEN blue:DEFAULT_CLOCK_BORDER_COLOR_BLUE alpha:DEFAULT_CLOCK_BORDER_COLOR_ALPHA];
        // Default color of the digit & gradiante are the same of the border (they'll use border's degfault)
        [self.settings addDigitColorWithRed:DEFAULT_CLOCK_BORDER_COLOR_RED green:DEFAULT_CLOCK_BORDER_COLOR_GREEN blue:DEFAULT_CLOCK_BORDER_COLOR_BLUE alpha:DEFAULT_CLOCK_BORDER_COLOR_ALPHA];
        [self.settings addGraduationColorWithRed:DEFAULT_CLOCK_BORDER_COLOR_RED green:DEFAULT_CLOCK_BORDER_COLOR_GREEN blue:DEFAULT_CLOCK_BORDER_COLOR_BLUE alpha:DEFAULT_CLOCK_BORDER_COLOR_ALPHA];
    }

    // app background color
    self.view.backgroundColor=[settings backgroundColor];
}

#pragma mark - Analog Clock
-(void)analogClock {
    // remove old instances of the, if exist
    [self removeAnalogClock];
    
    // add the clock to UI
    BEMAnalogClockView *clock = [[BEMAnalogClockView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-(DEFAULT_CLOCK_SIZE/2), self.view.frame.size.height/2-(DEFAULT_CLOCK_SIZE/2), DEFAULT_CLOCK_SIZE,DEFAULT_CLOCK_SIZE)];
    clock.delegate = self;
    clock.tag=DEFAULT_CLOCK_TAG;
    clock.enableShadows = NO;
    clock.realTime = YES;
    clock.currentTime = YES;
    clock.setTimeViaTouch = NO;

    clock.borderColor = [self.settings clockBorderColor];
    // Border Visibility - General Settings
    if ([settings borderIsVisible]) {
        clock.borderWidth = 3.00f;
    } else {
        clock.borderWidth = 0.00f;
    }
    // Digit Visibility - General Settings
    if ([self.settings digitIsVisible]) {
        clock.enableDigit = YES;
    } else {
        clock.enableDigit = NO;
    }
    // Graduation Visibility - General Settings
    if ([self.settings graduationIsVisible]) {
        clock.enableGraduations = YES;
    } else {
        clock.enableGraduations = NO;
    }

    // app background color
    self.view.backgroundColor=[self.settings backgroundColor];
    
    // Clock Face color
    clock.faceBackgroundColor = [self.settings clockFaceColor];
    clock.faceBackgroundAlpha = [self.settings clockFaceAlpha];
    
    clock.digitFont = [UIFont fontWithName:@"HelveticaNeue-Thin" size:17];

    // Digit Color
    clock.digitColor = [self.settings digitColor];

    // Hour
    clock.hourHandColor=DEFAULT_APP_DETAIL_COLOR;
    clock.hourHandOffsideLength=0;
    clock.hourHandLength=35;
    clock.hourHandAlpha=1.00f;
    
    // Minute
    clock.minuteHandColor=DEFAULT_APP_DETAIL_COLOR;
    clock.minuteHandOffsideLength=0;
    clock.minuteHandLength=55;
    clock.minuteHandAlpha=1.00f;
    
    // Second
    clock.secondHandColor=DEFAULT_APP_DETAIL_COLOR;
    clock.secondHandOffsideLength=0;
    clock.secondHandLength=55;
    clock.secondHandAlpha=0.30f;
    
    [self.view addSubview:clock];
}

-(void)removeAnalogClock {
    for (UIView *view in self.view.subviews) {
        if (view.tag==DEFAULT_CLOCK_TAG) {
            [view removeFromSuperview];
        }
    }
}


#pragma mark - Analog Clock Delegate Methods
- (CGFloat)analogClock:(BEMAnalogClockView *)clock graduationLengthForIndex:(NSInteger)index {
    if (clock.tag == DEFAULT_CLOCK_TAG) {
        if (!(index % 5) == 1) { // Every 5 graduation will be longer.
            return 20;
        } else {
            return 5;
        }
    }
    else return 0;
}

- (UIColor *)analogClock:(BEMAnalogClockView *)clock graduationColorForIndex:(NSInteger)index {
    
    NSLog(@"retrieving graduation color as %@",[self.settings graduationColor]);
    return [self.settings graduationColor];
    
//    if (!(index % 15) == 1) { // Every 15 graduation will be blue.
//        return [self.settings graduationColor];
//    } else {
//        return [self.settings graduationColor];
//    }
}

-(CGFloat)analogClock:(BEMAnalogClockView *)clock graduationAlphaForIndex:(NSInteger)index {
    return (CGFloat) 1.00f;
}

//-(CGFloat)analogClock:(BEMAnalogClockView *)clock graduationOffsetForIndex:(NSInteger)index {
//    return 1.00f;
//}

//- (void)currentTimeOnClock:(BEMAnalogClockView *)clock Hours:(NSString *)hours Minutes:(NSString *)minutes Seconds:(NSString *)seconds {
//    if (clock.tag == DEFAULT_CLOCK_TAG) {
//        int hoursInt = [hours intValue];
//        int minutesInt = [minutes intValue];
//        int secondsInt = [seconds intValue];
//        NSString *temp=[NSString stringWithFormat:@"%02d:%02d:%02d", hoursInt, minutesInt, secondsInt];
//        NSLog(@"... pulsing       %@",temp);
//    }
//}
//




//#pragma mark - Navigation 
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
////    NSLog(@"prepareForSegue Method");
////    if ([segue.identifier isEqualToString:@"showConfiguration"]) {
////        NSLog(@"SEGUE identified");
////    }
//}

#pragma mark - Status Bar
-(BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - Memory Warning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
 
    NSLog(@"*** MEMORY WARNING ***");
}


@end
