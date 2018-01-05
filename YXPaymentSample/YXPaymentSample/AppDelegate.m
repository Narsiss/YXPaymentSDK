//
//  AppDelegate.m
//  YXPaymentSample
//
//  Created by Solo Ye on 01/12/2017.
//  Copyright © 2017 unionpay. All rights reserved.
//

#import "AppDelegate.h"
#import "YXPayment.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//#define __IPHONE_10_0    100000
#if __IPHONE_OS_VERSION_MAX_ALLOWED > 100000
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options
{
    return [self handleURL:url];
}
#endif

- (BOOL) application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    return [self handleURL:url];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return [self handleURL:url];
}

-(BOOL)handleURL:(NSURL *)url {
    return [YXPayment handleURL:url block:^(YXPaymentResponse response, NSDictionary* data) {
        NSLog(@"DATA: %@",data);
        switch (response) {
            case YXPaymentResponseNone:
                NSLog(@"RES: 非银信支付URL");
                break;
            case YXPaymentResponseFailed:
                NSLog(@"RES: 交易失败");
                break;
            case YXPaymentResponseSuccess:
                NSLog(@"RES: 交易成功");
                break;
                
            default:
                break;
        }
    }];
}



@end
