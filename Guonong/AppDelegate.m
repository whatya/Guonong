//
//  AppDelegate.m
//  Guonong
//
//  Created by 张宝 on 15/10/21.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "AppDelegate.h"
#import "Macros.h"
#import "GuideVC.h"
#import "LoginVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //1、判断是否用过
    //2、没用过 --》 3、到引导页
    //4、用过   --》 5、到登陆页面（如果登陆过，直接到主界面）
    
    //1、判断是否登陆过
    if (![NSUserDefaults isViewd]) {
        //2、没用过到引导页
        GuideVC *guideVC = VC(@"Main", @"GuideVC");
        guideVC.lastPageAction = ^{
            [NSUserDefaults viewd];
            UINavigationController *loginNav = VC(@"Main", @"LoginNav");
            LoginVC *loginVC = loginNav.viewControllers[0];
            loginVC.loginCallback = ^(BOOL success,NSString *errorString,NSDictionary *data){
                //1、存储用户名密码 --》2、跳转到主页
                
                //1、存储用户名密码
                
                //2、跳转到首页
                UIViewController *mainTabVC = VC(@"Main", @"TabVC");
                self.window.rootViewController = mainTabVC;
                };
            self.window.rootViewController = loginNav;
            
        };
        self.window.rootViewController = guideVC;
        [self.window makeKeyAndVisible];
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {}

- (void)applicationDidEnterBackground:(UIApplication *)application {}

- (void)applicationWillEnterForeground:(UIApplication *)application {}

- (void)applicationDidBecomeActive:(UIApplication *)application {}

- (void)applicationWillTerminate:(UIApplication *)application {}

@end
