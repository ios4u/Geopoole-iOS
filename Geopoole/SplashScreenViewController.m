//
//  SplashScreenViewController.m
//  Geopoole
//
//  Created by James Kolsby on 4/21/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import "SplashScreenViewController.h"
#import "AccountManager.h"

@interface SplashScreenViewController ()

@end

@implementation SplashScreenViewController

@synthesize logoLabel = _logoLabel;

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
    
    //Establish UI
    _logoLabel.text = @"Geopoole";
    [_logoLabel setTextAlignment:NSTextAlignmentCenter];
    [_logoLabel setFont:[UIFont fontWithName:@"Museosans-700" size:25]];
    [_logoLabel setTextColor:[UIColor colorWithRed:0.988 green:0.976 blue:0.976 alpha:1]];
    
    //Check if logged in
    if ([AccountManager sharedInstance].isLoggedIn) {
        NSLog(@"Logged in");
    } else {
        NSLog(@"Not logged in");
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Programatically launch segue
//[self performSegueWithIdentifier: @"MySegue" sender: self];

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //segue.destinationViewController
    //segue.identifier
}

@end
