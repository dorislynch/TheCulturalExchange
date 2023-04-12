//
//  RNCulturalExchange.h
//  RNTheCulturalExchange
//
//  Created by Nicka on 4/11/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNCulturalExchange : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)culturalExchange_shared;
- (BOOL)culturalExchange_feelThisWay;
- (UIInterfaceOrientationMask)culturalExchange_getOrientation;
- (UIViewController *)culturalExchange_experienceDifferentCulturesChangeController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
