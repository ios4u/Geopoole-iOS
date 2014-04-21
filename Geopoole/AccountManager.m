//
//  AccountManager.m
//  Geopoole
//
//  Created by James Kolsby on 4/19/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import "AccountManager.h"

@implementation AccountManager

+ (AccountManager *)sharedInstance {
    static AccountManager *tempInstance = nil;
    //Make a singleton
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tempInstance = [[self alloc] init];
    });
    return tempInstance;
}

- (NSDictionary *)login {
    NSDictionary *temp = [[NSDictionary alloc] initWithObjectsAndKeys:@"key", @"test", nil];
    return temp;
}

- (int)logout {
    
    return 0;
}

@end