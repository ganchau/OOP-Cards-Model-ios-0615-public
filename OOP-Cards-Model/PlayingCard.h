//
//  PlayingCard.h
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSNumber *rank;

- (instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank;

@end
