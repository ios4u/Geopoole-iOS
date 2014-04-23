//
//  UserHandler.m
//  Geopoole
//
//  Created by James Kolsby on 4/22/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import "UserHandler.h"

@implementation UserHandler

+ (UserHandler *)sharedInstance {
    static UserHandler *tempInstance = nil;
    //Make a singleton
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tempInstance = [[self alloc] init];
        tempInstance.isLoggedIn = NO;
    });
    return tempInstance;
}

- (void)login :(NSMutableDictionary *)newUserDetails {
    self.isLoggedIn = YES;
    self.userDetails = newUserDetails;
}

- (void)logout {
    self.isLoggedIn = NO;
    self.userDetails = nil;
}

@end