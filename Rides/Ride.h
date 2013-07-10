//
//  Ride.h
//  Rides
//
//  Created by Isom,Grant on 7/9/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ride : NSObject

@property(nonatomic, copy) NSString *text;

@property (nonatomic) BOOL completed;

-(id)initWithText:(NSString*)text;

+(id)RideWithText:(NSString*)text;

@end
