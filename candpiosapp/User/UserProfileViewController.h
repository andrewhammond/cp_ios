//
//  UserProfileViewController.h
//  candpiosapp
//
//  Created by Stephen Birarda on 2/1/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "CPUserActionCell.h"

@interface UserProfileViewController : UIViewController <UIScrollViewDelegate, CPUserActionCellDelegate>

@property (strong, nonatomic) User *user;
@property (nonatomic) BOOL isF2FInvite;
@property (nonatomic) BOOL scrollToReviews;

- (IBAction)f2fInvite;
- (void)placeUserDataOnProfile;

@end
