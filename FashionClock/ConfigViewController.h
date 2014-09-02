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


// Panes
@property (weak, nonatomic) IBOutlet UIView *leftPane;
@property (weak, nonatomic) IBOutlet UIView *pane00;
@property (weak, nonatomic) IBOutlet UIView *pane01;
@property (weak, nonatomic) IBOutlet UIView *pane02;

// General Settings
@property (weak, nonatomic) IBOutlet UISwitch *generalBorders;
@property (weak, nonatomic) IBOutlet UISwitch *generalDigits;
@property (weak, nonatomic) IBOutlet UISwitch *generalGraduation;



@end
