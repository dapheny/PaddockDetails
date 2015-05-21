//
//  RWTPaddockDetailsData.m
//  PaddockDetails
//
//  Created by Dapheny Wono  on 5/12/15.
//  Copyright (c) 2015 Dapheny Wono . All rights reserved.
//

#import "RWTPaddockDetailsData.h"

@implementation RWTPaddockDetailsData

@synthesize title = _title;
@synthesize rating = _rating;

-(id)initWithTitle:(NSString *)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
