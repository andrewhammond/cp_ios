//
//  UserCardViewController.h
//  candpiosapp
//
//  Created by Andrew Hammond on 7/30/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CPStyledLabel.h"

@interface UserCardViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet CPStyledLabel *nicknameLabel;
@property (weak, nonatomic) IBOutlet UILabel *skill1Label;
@property (weak, nonatomic) IBOutlet UILabel *skill2Label;
@property (weak, nonatomic) IBOutlet UILabel *skill3Label;
@property (weak, nonatomic) IBOutlet UILabel *hoursWorkedLabel;
@property (weak, nonatomic) IBOutlet UILabel *loveInLabel;
@property (weak, nonatomic) IBOutlet UILabel *loveOutLabel;
@property (weak, nonatomic) IBOutlet UIView *cardstockView;
@property (strong, nonatomic) User* user;

@end
