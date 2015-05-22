//
//  AppDelegate.m
//  OOP-Cards-Model
//
//  Created by Al Tyus on 1/31/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import "AppDelegate.h"
#import "PlayingCard.h"
#import "BaseballCard.h"
#import "BaseballPlayer.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    PlayingCard *playingCard1 = [[PlayingCard alloc] initWithSuit:@"♠️" rank:@13];
    PlayingCard *playingCard2 = [[PlayingCard alloc] initWithSuit:@"♥️" rank:@4];
    PlayingCard *playingCard3 = [[PlayingCard alloc] initWithSuit:@"💩" rank:@99];
    BaseballPlayer *baseballPlayer1 = [[BaseballPlayer alloc] initWithFirstName:@"Looney"
                                                                      lastName:@"MahGooney"
                                                                        weight:@489
                                                                        number:@99
                                                                        height:@72];
    BaseballPlayer *baseballPlayer2 = [[BaseballPlayer alloc] initWithFirstName:@"Antonio"
                                                                       lastName:@"Gwynn"
                                                                         weight:@225
                                                                         number:@35
                                                                         height:@69];
    BaseballCard *baseballCard1 = [[BaseballCard alloc] initWithBaseballPlayer:baseballPlayer2
                                                                      teamName:@"Madres"
                                                                         brand:@"Lower Deck"
                                                                    cardNumber:@3983];
    BaseballCard *baseballCard2 = [[BaseballCard alloc] initWithBaseballPlayer:baseballPlayer1
                                                                      teamName:@"Hoagies"
                                                                         brand:@"Totts"
                                                                    cardNumber:@678];
    BaseballCard *baseballCard3 = [[BaseballCard alloc] initWithBaseballPlayer:baseballPlayer1
                                                                      teamName:@"Hoagies"
                                                                         brand:@"Lower Deck"
                                                                    cardNumber:@2045];
    NSLog(@"\n%@\n%@\n%@\n%@\n%@\n%@", playingCard1, playingCard2, playingCard3,
          baseballCard1, baseballCard2, baseballCard3);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
