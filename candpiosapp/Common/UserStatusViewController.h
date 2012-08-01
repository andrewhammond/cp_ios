//
//  UserStatusViewController.h
//  candpiosapp
//
//  Created by Andrew Hammond on 7/31/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserStatusViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *timeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *markerImageView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) User *user;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;

@end
