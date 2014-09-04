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



@end
