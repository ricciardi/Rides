//
//  CreateViewController.h
//  Rides
//
//  Created by Isom,Grant on 7/13/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Create : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *groupName;
@property (weak, nonatomic) IBOutlet UIButton *groupDone;
-(IBAction)dismissKeyboardOnTap:(id)sender;

@end
