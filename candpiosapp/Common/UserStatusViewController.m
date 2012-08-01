//
//  UserStatusViewController.m
//  candpiosapp
//
//  Created by Andrew Hammond on 7/31/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import "UserStatusViewController.h"

@interface UserStatusViewController ()

@end

@implementation UserStatusViewController
@synthesize distanceLabel;
@synthesize timeLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setUser:(User *)user {
    self.headlineLabel.text = @"";
    self.timeLabel.text = @"";
    self.distanceLabel.text = @"";
    self.locationLabel.text = @"";
    self.timeImageView.alpha = 0;
    self.markerImageView.image = [UIImage imageNamed:@"pin-checkedout.png"];
    
    _user = user;
    if (!user) { return; }

    self.locationLabel.text = self.user.placeCheckedIn.name;
    self.distanceLabel.text = [CPUtils localizedDistanceStringForDistance:user.distance];
    if ([self.user.checkoutEpoch timeIntervalSinceNow] > 0) {
        self.markerImageView.image = [UIImage imageNamed:@"pin-checkedin.png"];
        self.timeImageView.alpha = 1;
        
        // get the number of seconds until they'll checkout
        NSTimeInterval secondsToCheckout = [self.user.checkoutEpoch timeIntervalSinceNow];
        int minutesToCheckout = floor(secondsToCheckout / 60.0);
        int hoursToCheckout = floor(minutesToCheckout / 60.0);
        int minutesToHour = minutesToCheckout % 60;
        
        // only show hours if there's at least one
        if (hoursToCheckout > 0) {
            self.timeLabel.text = [NSString stringWithFormat:@"%d hrs ", hoursToCheckout];
        } 
        self.timeLabel.text = [self.timeLabel.text stringByAppendingFormat:@"%d mins", minutesToHour];
        self.headlineLabel.text = self.user.status;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.user = nil;
    [self setDistanceLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
