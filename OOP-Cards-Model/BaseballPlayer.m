//
//  BaseballPlayer.m
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "BaseballPlayer.h"

@implementation BaseballPlayer

+ (NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)pounds
{
    return @([pounds integerValue] * 0.45359);
}

+ (NSString *)convertFeetToFeetAndInchesWithInches:(NSNumber *)inches
{
    NSNumber *feet = @([inches integerValue] / 12);
    NSNumber *inch = @([inches integerValue] % 12);
    return [NSString stringWithFormat:@"%@ feet %@ inches", feet, inch];
}

- (instancetype)init
{
    return [self initWithFirstName:@""
                          lastName:@""
                            weight:@0
                            number:@0
                            height:@0];
}

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                           weight:(NSNumber *)weight
                           number:(NSNumber *)number
                           height:(NSNumber *)height
{
    self = [super init];
    
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _weight = weight;
        _number = number;
        _height = height;
    }
    
    return self;
}

@end
