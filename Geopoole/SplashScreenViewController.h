//
//  SplashScreenViewController.h
//  Geopoole
//
//  Created by James Kolsby on 4/21/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface SplashScreenViewController : UIViewController <FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *logoLabel;
@property (weak, nonatomic) IBOutlet FBLoginView *loginButton;



@end
