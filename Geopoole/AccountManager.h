//
//  AccountManager.h
//  Geopoole
//
//  Created by James Kolsby on 4/19/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountManager : NSObject

@property (assign) NSDictionary *accountDetails;

+ (AccountManager*)sharedInstance;

- (NSDictionary *)login;

@end
