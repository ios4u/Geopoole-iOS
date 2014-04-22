//
//  UserHandler.h
//  Geopoole
//
//  Created by James Kolsby on 4/22/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserHandler : NSObject

@property (assign) BOOL isLoggedIn;
@property (assign) NSMutableDictionary *userDetails;

+ (UserHandler*)sharedInstance;

- (void)login :(NSMutableDictionary *)newUserDetails;
- (void)logout;

@end
