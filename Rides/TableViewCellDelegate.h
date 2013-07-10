//
//  TableViewCellDelegate.h
//  Rides
//
//  Created by Isom,Grant on 7/9/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import "Ride.h"

#import <Foundation/Foundation.h>

@protocol TableViewCellDelegate <NSObject>

//indicates a ride has been deleted
-(void) rideDeleted:(Ride*)Ride;


@end
