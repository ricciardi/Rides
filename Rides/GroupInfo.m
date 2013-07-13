//
//  GroupInfo.m
//  Rides
//
//  Created by Isom,Grant on 7/13/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import "GroupInfo.h"


@interface GroupInfo ()

@end

@implementation GroupInfo

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) changeProductText:(NSString *)str{
    self.navigationItem.title = str;
}


@end
