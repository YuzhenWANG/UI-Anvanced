//
//  AppDelegate.m
//  导航控制器
//
//  Created by 王宇珍 on 16/11/24.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRoot.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建一个根视图控制器
    VCRoot* root=[[VCRoot alloc]init];
    
    //创建导航控制器
    //导航控制器主要用来管理多个视图控制器的切换
    //通过层级的方式来管理
    //创建控制器时，一定要有一个根视图控制器
    //参数1：作为导航控制器的根视图控制器
    UINavigationController* nav=[[UINavigationController alloc]initWithRootViewController:root];
    //将window的根视图设置为导航控制器
    self.window.rootViewController=nav;
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
