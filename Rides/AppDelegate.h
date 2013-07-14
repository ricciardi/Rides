//
//  AppDelegate.h
//  Rides
//
//  Created by Isom,Grant on 7/8/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@class MenuViewController;
@class LoginViewController;

// Scrumptious sample application
//
// The purpose of the Scrumptious sample application is to demonstrate a complete real-world
// application that includes Facebook integration, friend picker, place picker, and Open Graph
// Action creation and posting.
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) MenuViewController *mainViewController;

@property (strong, nonatomic) LoginViewController* loginViewController;

@property BOOL isNavigating;

@end
