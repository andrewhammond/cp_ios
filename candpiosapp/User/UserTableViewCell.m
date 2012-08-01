//
//  UserTableViewCell.m
//  candpiosapp
//
//  Created by Emmanuel Crouvisier on 1/15/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import "UserTableViewCell.h"
#import "CPUIHelper.h"

@implementation UserTableViewCell 

@synthesize nicknameLabel;
@synthesize categoryLabel;
@synthesize statusLabel;
@synthesize distanceLabel;
@synthesize checkInLabel;
@synthesize checkInCountLabel;
@synthesize profilePictureImageView;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)awakeFromNib
{
    // call super's awakeFromNib so that this cell can be swipeable
    [super awakeFromNib];
    
//    self.contentView.backgroundColor = [UIColor colorWithRed:0.67 green:0.83 blue:0.94 alpha:1.0];
    
    [CPUIHelper addShadowToView:self.profilePictureImageView color:[UIColor blackColor] offset:CGSizeMake(1, 1) radius:0.5 opacity:1.0];
    
    [CPUIHelper changeFontForLabel:self.nicknameLabel toLeagueGothicOfSize:24];   
}

@end
