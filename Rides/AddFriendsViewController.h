//
//  AddFriends.h
//  Rides
//
//  Created by Isom,Grant on 7/13/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddFriendsViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *friends;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *done;

@end
