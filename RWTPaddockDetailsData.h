//
//  RWTPaddockDetailsData.h
//  PaddockDetails
//
//  Created by Dapheny Wono  on 5/12/15.
//  Copyright (c) 2015 Dapheny Wono . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RWTPaddockDetailsData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle: (NSString*)title rating: (float)rating;

@end
