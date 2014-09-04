//
//  ViewController.h
//  FashionClock
//
//  Created by Marcelo Sampaio on 9/1/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BEMAnalogClockView.h"
#import "Settings.h"

@interface ViewController : UIViewController<BEMAnalogClockDelegate>



// properties
@property (nonatomic,strong) Settings *settings;


@end
