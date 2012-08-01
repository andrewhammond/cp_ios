//
//  UserTableViewCell.h
//  candpiosapp
//
//  Created by Emmanuel Crouvisier on 1/15/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CPUserActionCell.h"

@class UserTableViewCell;
@class UserStatusViewController;
@class UserCardViewController;

@interface UserTableViewCell : CPUserActionCell


@property (nonatomic, retain) IBOutlet UILabel *nicknameLabel;
@property (nonatomic, retain) IBOutlet UILabel *categoryLabel;
@property (nonatomic, retain) IBOutlet UILabel *statusLabel;
@property (nonatomic, retain) IBOutlet UILabel *distanceLabel;
@property (nonatomic, retain) IBOutlet UILabel *checkInLabel;
@property (nonatomic, retain) IBOutlet UILabel *checkInCountLabel;
@property (nonatomic, retain) IBOutlet UIImageView *profilePictureImageView;

@property (strong, nonatomic) UserStatusViewController *userStatus;
@property (strong, nonatomic) UserCardViewController *userCard;

@end
