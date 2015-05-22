//
//  PlayingCard.m
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (BOOL)validRank:(NSNumber *)rank
{
    if ([rank integerValue] > 0 && [rank integerValue] < 14) {
        return YES;
    }
    return NO;
}

- (BOOL)validSuit:(NSString *)suit
{
    NSArray *validSuit = @[@"♥️", @"♠️", @"♣️", @"♦️"];
    
    if ([validSuit containsObject:suit]) {
        return YES;
    }
    return NO;
}

- (void)setRank:(NSNumber *)rank
{
    if ([self validRank:rank]) {
        _rank = rank;
    } else {
        _rank = @0;
    }
}

- (void)setSuit:(NSString *)suit
{
    if ([self validSuit:suit]) {
        _suit = suit;
    } else {
        _suit = @"";
    }
}

- (instancetype)init
{
    return [self initWithSuit:@"" rank:@0];
}

// designated initializer
- (instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank
{
    self = [super initWithMatched:NO frame:CGRectNull faceUp:NO];
    
    if (self) {
        if ([self validRank:rank]) {
            _rank = rank;
        } else {
            _rank = @0;
        }
        if ([self validSuit:suit]) {
            _suit = suit;
        } else {
            _suit = @"";
        }
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Rank:%@ Suit:%@", self.rank, self.suit];
}


@end
