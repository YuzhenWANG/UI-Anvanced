//
//  AppDelegate.m
//  分栏控制器
//
//  Created by 王宇珍 on 16/11/30.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFourth.h"
#import "VCFifth.h"
#import "VCSixth.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    //创建控制器一
    VCFirst* vcFirst = [[VCFirst alloc]init];
    vcFirst.title=@"视图1";
    vcFirst.view.backgroundColor=[UIColor blueColor];
    
    
    //创建控制器二
    VCSecond* vcSecond=[[VCSecond alloc]init];
    vcSecond.title=@"视图二";
    vcSecond.view.backgroundColor=[UIColor yellowColor];
    
    
    //创建控制器三
    VCThird* vcThird=[[VCThird alloc]init];
    vcThird.title=@"视图三";
    vcThird.view.backgroundColor=[UIColor orangeColor];
    
    
    VCFourth* vc04=[[VCFourth alloc]init];
    vc04.view.backgroundColor=[UIColor grayColor];
    vc04.title=@"视图四";
    
    VCFifth* vc05=[[VCFifth alloc]init];
    vc05.view.backgroundColor=[UIColor greenColor];
    vc05.title=@"视图五";
    
    VCSixth* vc06=[[VCSixth alloc]init];
    vc06.view.backgroundColor=[UIColor purpleColor];
    vc06.title=@"视图六";
    
    
    //创建分栏控制器对象
    UITabBarController* tbController=[[UITabBarController alloc]init];
    //创建一个控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组中
    NSArray* arrayVC= [NSArray arrayWithObjects:vcFirst,vcSecond,vcThird,vc04,vc05,vc06,nil];
    //赋给管理数组
    tbController.viewControllers=arrayVC;
    
    //将分栏控制器作为根视图的控制器
    self.window.rootViewController=tbController;
    
    //设置选中的视图控制器的索引
    //实际是通过索引来确定显示哪个控制器
    tbController.selectedIndex=2;
    
    //设置透明度
    tbController.tabBar.translucent=NO;
    //改变工具栏颜色
    tbController.tabBar.barTintColor=[UIColor redColor];
    //改变按钮文字颜色
    tbController.tabBar.tintColor=[UIColor blueColor];
    
    
    
    tbController.delegate=self;
    
    
    
    return YES;
}

//开始编辑前调用
-(void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers
{
    NSLog(@"编辑前");
}

//即将结束前
-(void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"即将结束前");
}

//已经结束
-(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"已经结束");
    NSLog(@"vc=%@",viewControllers);
}
//选中控制器对象
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if(tabBarController.viewControllers[tabBarController.selectedIndex]==viewController)
    {
        NSLog(@"ok");
    }
    NSLog(@"选中控制器对象");
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
