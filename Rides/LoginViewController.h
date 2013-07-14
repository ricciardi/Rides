//
//  Login.h
//  Rides
//
//  Created by Isom,Grant on 7/9/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface LoginViewController : UIViewController<FBLoginViewDelegate>

@property (unsafe_unretained, nonatomic) IBOutlet FBLoginView *FBLoginView;

@end
