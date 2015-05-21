//
//  RWTPaddockDetailsDoc.h
//  PaddockDetails
//
//  Created by Dapheny Wono  on 5/12/15.
//  Copyright (c) 2015 Dapheny Wono . All rights reserved.
//

#import <UIKit/UIKit.h>

@class RWTPaddockDetailsData;

@interface RWTPaddockDetailsDoc : NSObject

@property (strong) RWTPaddockDetailsData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle: (NSString*)title rating: (float)rating thumbImage: (UIImage *)thumbImage fullImage:(UIImage *)fullImage;

@end
