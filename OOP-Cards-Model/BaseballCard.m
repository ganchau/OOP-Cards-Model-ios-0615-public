//
//  BaseballCard.m
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "BaseballCard.h"

@implementation BaseballCard

- (NSString *)description
{
    return [NSString stringWithFormat:@"Player name:%@%@ Team name:%@ Brand:%@ Card Number:%@",
            self.player.firstName, self.player.lastName, self.teamName, self.brand, self.cardNumber];
}

- (instancetype)init
{
    return [self initWithBaseballPlayer:[[BaseballPlayer alloc] init]
                               teamName:@""
                                  brand:@""
                             cardNumber:@0];
}

// designated initializer
- (instancetype)initWithBaseballPlayer:(BaseballPlayer *)player
                              teamName:(NSString *)teamName
                                 brand:(NSString *)brand
                            cardNumber:(NSNumber *)cardNumber
{
    self = [super initWithMatched:NO frame:CGRectNull faceUp:NO];
    
    if (self) {
        _player = player;
        _teamName = teamName;
        _brand = brand;
        _cardNumber = cardNumber;
    }
    
    return self;
}


@end
