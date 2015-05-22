//
//  Card.h
//  OOP-Cards-Model
//
//  Created by Gan Chau on 5/21/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic) BOOL matched;
@property (nonatomic) CGRect frame;
@property (nonatomic, getter=isFaceUp) BOOL faceUp;

- (void)flipCard;

- (instancetype)initWithMatched:(BOOL)matched frame:(CGRect)frame faceUp:(BOOL)faceUp;

@end
