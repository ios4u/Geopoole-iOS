//
//  UIHighlightButton.m
//  Geopoole
//
//  Created by James Kolsby on 4/22/14.
//  Copyright (c) 2014 James Kolsby. All rights reserved.
//

#import "UIHighlightButton.h"

@implementation UIHighlightButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if(self.highlighted) {
        [self setAlpha:1.0];
    }
    else {
        [self setAlpha:0.5];
    }
}

@end
