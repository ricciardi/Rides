//
//  Rides.m
//  Rides
//
//  Created by Isom,Grant on 7/9/13.
//  Copyright (c) 2013 Chocolate Ice Cream. All rights reserved.
//

#import "Rides.h"

#import "Ride.h"
#import "RideTableCell.h"
@interface Rides ()

@end

@implementation Rides {
    // an array of to-do items
    NSMutableArray* _rides;
    BOOL _markCompleteOnDragRelease;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // create a dummy to-do list
        _rides = [[NSMutableArray alloc] init];
        [_rides addObject:[Ride RideWithText:@"Pick up Grant"]];
        [_rides addObject:[Ride RideWithText:@"Pick up Justin"]];
        [_rides addObject:[Ride RideWithText:@"Pick up Ryan"]];
        [_rides addObject:[Ride RideWithText:@"Pick up Logan"]];
        [_rides addObject:[Ride RideWithText:@"Pick up Diego"]];
        
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource = self;
    [self.tableView registerClass:[RideTableCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.delegate = self;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

-(void)rideDeleted:(id)ride {
    // use the UITableView to animate the removal of this row
    NSUInteger index = [_rides indexOfObject:ride];
    [self.tableView beginUpdates];
    [_rides removeObject:ride];
    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:index inSection:0]]
                          withRowAnimation:UITableViewRowAnimationFade];
    [self.tableView endUpdates];
}

#pragma mark - UITableViewDataDelegate protocol methods
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f;
}

#pragma mark - UITableViewDataSource protocol methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _rides.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *ident = @"cell";
    // re-use or create a cell
    RideTableCell *cell = [tableView dequeueReusableCellWithIdentifier:ident forIndexPath:indexPath];
    cell.textLabel.backgroundColor = [UIColor clearColor];
    // find the to-do item for this index
    int index = [indexPath row];
    Ride *item = _rides[index];
    // set the text
    //cell.textLabel.text = item.text;
    cell.delegate = self;
    cell.ride = item;
    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
