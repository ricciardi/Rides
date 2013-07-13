//
//  AppDelegate.m
//  Rides
//
//  Created by Isom,Grant on 7/8/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import "AppDelegate.h"
#import "Ride.h"
#import "Rides.h"
@implementation AppDelegate{
    NSMutableArray *rides;
}



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    rides = [NSMutableArray arrayWithCapacity:5];
    Ride *ride1 = [[Ride alloc] init];
    Ride *ride2 = [[Ride alloc] init];
    Ride *ride3 = [[Ride alloc] init];
    Ride *ride4 = [[Ride alloc] init];
    Ride *ride5 = [[Ride alloc] init];
    
    ride1.rider = @"Grant";
    ride2.rider = @"Justin";
    ride3.rider = @"Ryan";
    ride4.rider = @"Logan";
    ride5.rider = @"Bitty";
    
    /*
    ride1.artist = @"Kanye West";
    ride2.artist = @"Kanye West";
    ride3.artist = @"Foster The People";
    ride4.artist = @"David Guetta";
    ride5.artist = @"The Strokes";
    */
    ride1.rating = 5;
    ride2.rating = 5;
    ride3.rating = 5;
    ride4.rating = 5;
    ride5.rating = 5;
    
    [rides addObject:ride1];
    [rides addObject:ride2];
    [rides addObject:ride3];
    [rides addObject:ride4];
    [rides addObject:ride5];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UINavigationController *navController = [
    
    
    /*UITabBarController *tabBarController =
    (UITabBarController *)self.window.rootViewController;
	
    UINavigationController *navigationController =
    [[tabBarController viewControllers] objectAtIndex:0];
	
    AlbumViewController *albumsViewController =
    [[navigationController viewControllers] objectAtIndex:0];
	albumsViewController.albums = albums;*/

    
    /*UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *initialViewController = (UIViewController *)[storyboard instantiateViewControllerWithIdentifier:@"RootViewController"];
    self.window.rootViewController = initialViewController;
    UITableViewController *Ride = [storyboard instantiateViewControllerWithIdentifier:@"Ride"];
    [Ride setRides: ];*/
    
    
    // Override point for customization after application launch.
    return YES;
}

							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
