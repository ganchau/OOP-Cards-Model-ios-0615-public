//
//  BaseballPlayer.h
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseballPlayer : NSObject

@property (strong, nonatomic) NSNumber *weight;
@property (strong, nonatomic) NSNumber *number;
@property (strong, nonatomic) NSNumber *height;
@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;

+ (NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)pounds;
+ (NSString *)convertFeetToFeetAndInchesWithInches:(NSNumber *)inches;

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                           weight:(NSNumber *)weight
                           number:(NSNumber *)number
                           height:(NSNumber *)height;

@end
