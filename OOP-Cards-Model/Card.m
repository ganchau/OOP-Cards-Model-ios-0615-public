//
//  Card.m
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"

@implementation Card

- (NSString *)description
{
    return @"";
}

- (instancetype)init
{
    return [self initWithMatched:NO frame:CGRectNull faceUp:NO];
}

// designated initializer
- (instancetype)initWithMatched:(BOOL)matched frame:(CGRect)frame faceUp:(BOOL)faceUp
{
    self = [super init];
    
    if (self) {
        _matched = matched;
        _frame = frame;
        _faceUp = faceUp;
    }
    
    return self;
}

- (void)flipCard
{
    self.faceUp = !self.isFaceUp;
}

@end
