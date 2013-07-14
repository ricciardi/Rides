//
//  ViewController.m
//  Rides
//
//  Created by Isom,Grant on 7/8/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize groupsButton, createButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickedCreate:(id)sender {
    
}
- (IBAction)clickedGroups:(id)sender {
}


/*- (IBAction)next {
    ViewBController *nextController = [[ViewBController alloc] initWithNibName:@"ViewBController" bundle:nil];
    [self presentModalViewController:nextController animated:YES];
    [nextController release];
}
*/
@end
