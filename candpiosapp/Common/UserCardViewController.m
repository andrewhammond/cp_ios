//
//  UserCardViewController.m
//  candpiosapp
//
//  Created by Andrew Hammond on 7/30/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import "UserCardViewController.h"

@interface UserCardViewController ()

@end

@implementation UserCardViewController
@synthesize skill3Label;

- (void)setUser:(User *)user
{
    // assign the user
    _user = user;
    
    // reset the fields
    self.nicknameLabel.text = @"";
    self.hoursWorkedLabel.text = @"";
    self.loveInLabel.text = @"";
    self.loveOutLabel.text = @"";
    self.skill1Label.text = @"";
    self.skill2Label.text = @"";
    self.skill3Label.text = @"";
    
    // return if there is no user
    if (!_user) { return; }
    
    // set the card image to the user's profile image
    [CPUIHelper profileImageView:self.imageView
             withProfileImageUrl:self.user.photoURL];
    
    // update labels on the user business card
    self.nicknameLabel.text = self.user.nickname;
    
    [self updateFields];
}

- (void)updateFields {
    //    self.personalLabel.text = user.checkedIn ? self.user.status : @"";
    self.hoursWorkedLabel.text = [NSString stringWithFormat:@"%d", self.user.totalHours];
    NSString *loveInText = [self.user.reviews objectForKey:@"love_received"];
    self.loveInLabel.text = loveInText ? loveInText : @"0";
    NSString *loveOutText = [self.user.reviews objectForKey:@"love_sent"];
    self.loveOutLabel.text = loveOutText ? loveOutText : @"0";
    
    if (self.user.skills.count > 0) {
        CPSkill * skill = (CPSkill *)[self.user.skills objectAtIndex:0];
        self.skill1Label.text = skill.description;
    }
    if (self.user.skills.count > 1) {
        CPSkill * skill = (CPSkill *)[self.user.skills objectAtIndex:1];
        self.skill2Label.text = skill.description;
    }
    if (self.user.skills.count > 2) {
        CPSkill * skill = (CPSkill *)[self.user.skills objectAtIndex:2];
        self.skill3Label.text = skill.description;
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // set tha background texture
    self.cardstockView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"paper-texture.jpg"]];
}
- (void)viewDidUnload
{
    self.user = nil;
    [self setSkill3Label:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
