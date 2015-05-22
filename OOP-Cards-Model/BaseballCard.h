//
//  BaseballCard.h
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"
#import "BaseballPlayer.h"

@interface BaseballCard : Card

@property (strong, nonatomic) BaseballPlayer *player;
@property (strong, nonatomic) NSString *teamName;
@property (strong, nonatomic) NSString *brand;
@property (strong, nonatomic) NSNumber *cardNumber;

- (instancetype)initWithBaseballPlayer:(BaseballPlayer *)player
                              teamName:(NSString *)teamName
                                 brand:(NSString *)brand
                            cardNumber:(NSNumber *)cardNumber;

@end
