//
//  Ride.m
//  Rides
//
//  Created by Isom,Grant on 7/9/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import "Ride.h"

@implementation Ride

-(id)initWithText:(NSString*)text {
    if (self = [super init]) {
        self.text = text;
    }
    return self;
}

+(id)RideWithText:(NSString *)text {
    return [[Ride alloc] initWithText:text];
}


@end
