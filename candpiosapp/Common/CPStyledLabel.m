//
//  CPStyledLabel.m
//  candpiosapp
//
//  Created by Andrew Hammond on 7/30/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import "CPStyledLabel.h"

@implementation CPStyledLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    self.font = [UIFont fontWithName:@"LeagueGothic" size:self.font.pointSize];
}
@end
