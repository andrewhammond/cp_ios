//
//  CPPaperView.m
//  candpiosapp
//
//  Created by Andrew Hammond on 7/30/12.
//  Copyright (c) 2012 Coffee and Power Inc. All rights reserved.
//

#import "CPPaperView.h"

@implementation CPPaperView

- (id) init {
    if ((self = [super init])) {
        self.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"paper-texture.png"]];
    }
    return self;
    
}
- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        self.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"paper-texture.png"]];
    }
    return self;
}
@end
