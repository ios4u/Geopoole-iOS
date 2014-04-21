//
//  SplashScreenViewController.m
//  Geopoole
//
//  Created by James Kolsby on 4/21/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import "SplashScreenViewController.h"

@interface SplashScreenViewController ()

@end

@implementation SplashScreenViewController

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
	// Do any additional setup after loading the view.
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
