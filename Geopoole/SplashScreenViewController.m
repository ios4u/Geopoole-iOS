//
//  SplashScreenViewController.m
//  Geopoole
//
//  Created by James Kolsby on 4/21/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import "SplashScreenViewController.h"
#import "UserHandler.h"

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
    
    //Establish UI
    self.logoLabel.text = @"Geopoole";
    [self.logoLabel setTextAlignment:NSTextAlignmentCenter];
    [self.logoLabel setFont:[UIFont fontWithName:@"Museosans-700" size:25]];
    [self.logoLabel setTextColor:[UIColor colorWithRed:0.988 green:0.976 blue:0.976 alpha:1]];
    
    self.loginButton.readPermissions = @[@"basic_info"];
    self.loginButton.delegate = self;
    
    //Check if logged in
    if ([UserHandler sharedInstance].isLoggedIn) {
        NSLog(@"Logged in");
    } else {
        NSLog(@"Not logged in");
    }
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
    //Logged in with Facebook
    NSMutableDictionary *newUserDetails = [[NSMutableDictionary alloc] initWithObjectsAndKeys:user.id, @"id", user.name, @"name", nil];
    [[UserHandler sharedInstance] login:newUserDetails];
}

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
    //Call segue
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
    //Logged out
    [[UserHandler sharedInstance] logout];
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
