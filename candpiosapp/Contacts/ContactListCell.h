//
//  ContactListCell.h
//  candpiosapp
//
//  Created by Stephen Birarda on 5/18/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserTableViewCell.h"

@class ContactListCell;

@protocol ContactListCellDelegate

- (void)clickedAcceptButtonInUserTableViewCell:(ContactListCell *)contactListCell;
- (void)clickedDeclineButtonInUserTableViewCell:(ContactListCell *)contactListCell;

@end

@interface ContactListCell : CPUserActionCell

@property (nonatomic, assign) id<ContactListCellDelegate> contactListTVC;
@property (nonatomic, assign) IBOutlet UIImageView *profilePicture;
@property (nonatomic, assign) IBOutlet UILabel *nicknameLabel;
@property (nonatomic, assign) IBOutlet UILabel *statusLabel;
@property (nonatomic, retain) IBOutlet UIButton *acceptContactRequestButton;
@property (nonatomic, retain) IBOutlet UIButton *declineContactRequestButton;
@property (strong, nonatomic) UserCardViewController *userCard;
@property (strong, nonatomic) UserStatusViewController *userStatus;

- (IBAction)acceptButtonAction;
- (IBAction)declineButtonAction;

@end
