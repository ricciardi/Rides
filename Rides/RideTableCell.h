//
//  RideTableCell.h
//  Rides
//
//  Created by Isom,Grant on 7/9/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//
#import "Ride.h"
#import "TableViewCellDelegate.h"


#import <UIKit/UIKit.h>

@interface RideTableCell : UITableViewCell

@property (nonatomic) Ride *Ride;

@property (nonatomic, assign) id<TableViewCellDelegate> delegate;

@end
