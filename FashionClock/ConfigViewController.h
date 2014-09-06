//
//  ConfigViewController.h
//  FashionClock
//
//  Created by Marcelo Sampaio on 9/2/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Settings.h"

@interface ConfigViewController : UIViewController
// Scroll
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

// Settings
@property (strong,nonatomic) Settings *settings;



// Panes
@property (weak, nonatomic) IBOutlet UIView *leftPane;
@property (weak, nonatomic) IBOutlet UIView *pane00;
@property (weak, nonatomic) IBOutlet UIView *pane01;
@property (weak, nonatomic) IBOutlet UIView *pane02;
@property (weak, nonatomic) IBOutlet UIView *pane03;
@property (weak, nonatomic) IBOutlet UIView *pane04;
@property (weak, nonatomic) IBOutlet UIView *pane05;
@property (weak, nonatomic) IBOutlet UIView *pane06;
@property (weak, nonatomic) IBOutlet UIView *pane07;



// General Settings
@property (weak, nonatomic) IBOutlet UISwitch *generalBorders;
@property (weak, nonatomic) IBOutlet UISwitch *generalDigits;
@property (weak, nonatomic) IBOutlet UISwitch *generalGraduation;

// Background Color
@property (weak, nonatomic) IBOutlet UISlider *backgroundRed;
@property (weak, nonatomic) IBOutlet UISlider *backgroundGreen;
@property (weak, nonatomic) IBOutlet UISlider *backgroundBlue;
@property (weak, nonatomic) IBOutlet UISlider *backgroundAlpha;
@property (weak, nonatomic) IBOutlet UIView *backgroundPreview;

// Clock Face Color
@property (weak, nonatomic) IBOutlet UISlider *clockFaceRed;
@property (weak, nonatomic) IBOutlet UISlider *clockFaceGreen;
@property (weak, nonatomic) IBOutlet UISlider *clockFaceBlue;
@property (weak, nonatomic) IBOutlet UISlider *clockFaceAlpha;
@property (weak, nonatomic) IBOutlet UIView *clockFacePreview;

// Clock Border Color
@property (weak, nonatomic) IBOutlet UISlider *clockBorderRed;
@property (weak, nonatomic) IBOutlet UISlider *clockBorderGreen;
@property (weak, nonatomic) IBOutlet UISlider *clockBorderBlue;
@property (weak, nonatomic) IBOutlet UISlider *clockBorderAlpha;
@property (weak, nonatomic) IBOutlet UIView *clockBorderPreview;

// Digit Color
@property (weak, nonatomic) IBOutlet UISlider *digitRed;
@property (weak, nonatomic) IBOutlet UISlider *digitGreen;
@property (weak, nonatomic) IBOutlet UISlider *digitBlue;
@property (weak, nonatomic) IBOutlet UISlider *digitAlpha;
@property (weak, nonatomic) IBOutlet UIView *digitPreview;

// Graduation Color
@property (weak, nonatomic) IBOutlet UISlider *graduationRed;
@property (weak, nonatomic) IBOutlet UISlider *graduationGreen;
@property (weak, nonatomic) IBOutlet UISlider *graduationBlue;
@property (weak, nonatomic) IBOutlet UISlider *graduationAlpha;
@property (weak, nonatomic) IBOutlet UIView *graduationPreview;






@end
