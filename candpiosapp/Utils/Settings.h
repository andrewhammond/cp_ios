//
//  Settings.h
//  candpiosapp
//
//  Created by David Mojdehi on 12/31/11.
//  Copyright (c) 2011 Coffee and Power Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Settings : NSObject< NSCoding, NSCopying >

@property BOOL flag;
@property BOOL registeredForApnsSuccessfully;

// note: userEmailAddress is only valid if the created their account with an email address
@property (strong, nonatomic) NSString *userEmailAddress;
@property (strong, nonatomic) NSString *userPassword;
@property float userBalance;

//checkin notification settings
@property BOOL notifyInVenueOnly;
@property BOOL notifyWhenCheckedIn;

// TODO: Don't store the userPassword here or in NSUserDefaults
// it should be stored encrypted in the keychain

@end
