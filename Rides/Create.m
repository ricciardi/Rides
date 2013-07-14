//
//  CreateViewController.m
//  Rides
//
//  Created by Isom,Grant on 7/13/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import "Create.h"

@interface Create ()

@end

@implementation Create




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	 self.groupName.delegate = self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
- (IBAction)groupName:(id)sender {
    NSString *name = _groupName.text;
    NSLog(@"%@", name);
}

-(IBAction)dismissKeyboardOnTap:(id)sender
{
    [[self view] endEditing:YES];
}


//take name and send it database


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)groupDone:(id)sender {
}

@end
