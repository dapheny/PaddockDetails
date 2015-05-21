//
//  RWTPaddockDetailsDoc.m
//  PaddockDetails
//
//  Created by Dapheny Wono  on 5/12/15.
//  Copyright (c) 2015 Dapheny Wono . All rights reserved.
//

#import "RWTPaddockDetailsDoc.h"
#import "RWTPaddockDetailsData.h"

@implementation RWTPaddockDetailsDoc
@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString *)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {
    if ((self =[super init])) {
        self.data = [[RWTPaddockDetailsData alloc] initWithTitle: title rating: rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end
