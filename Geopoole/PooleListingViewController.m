//
//  PooleListingViewController.m
//  Geopoole
//
//  Created by James Kolsby on 4/22/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import "PooleListingViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface PooleListingViewController ()

@end

@implementation PooleListingViewController

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
    
    //Header bottom border
    self.headerView.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.headerView.layer.shadowOffset = CGSizeMake(0, 1.5f);
    self.headerView.layer.shadowOpacity = 0.18f;
    self.headerView.layer.shadowRadius = 0;
    self.headerView.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.headerView.bounds].CGPath;
    
    //Header labels
    self.headerLabel.text = @"Pooles Near You";
    [self.headerLabel setFont:[UIFont fontWithName:@"Museosans-700" size:22]];
    [self.headerLabel setTextColor:[UIColor colorWithRed:0.988 green:0.976 blue:0.976 alpha:1]];
    self.headerSubLabel.text = @"3306 Paces Ferry Ave."; // * Use location to get Address *
    [self.headerSubLabel setFont:[UIFont fontWithName:@"Museosans-500" size:13]];
    [self.headerSubLabel setTextColor:[UIColor colorWithRed:0.988 green:0.976 blue:0.976 alpha:0.5f]];
    
    [self.settingsButton setAlpha:0.5];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
