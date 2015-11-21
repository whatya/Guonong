//
//  Macros.h
//  Guonong
//
//  Created by 张宝 on 15/10/21.
//  Copyright © 2015年 张宝. All rights reserved.
//

#ifndef Macros_h
#define Macros_h

#import "Tool.h"
#import "NSObject+Util.h"
#import "NSUserDefaults+Util.h"
#import "UIImageView+WebCache.h"
#import "UIViewController+TopBar.h"
#import "TypeAndKey.h"
#import "API.h"


//回调函数定义
typedef void(^JsonCallback)(ResponseCode statusCode,id json);

//GBK编码
#define GBKEncoding CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)

//后台线程
#define BKQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

//主线程
#define MainQueue dispatch_get_main_queue()

//常量
#define debug 1
#define ShowLog if (debug == 1){NSLog(@"Running %@ '%@'",self.class,NSStringFromSelector(_cmd));}

#define UsernameKey @"username"
#define PasswordKey @"password"

//颜色
#define AppleColor      [UIColor colorWithRed:161/255.0 green:211/255.0 blue:110/255.0 alpha:1]
#define LightGrayColor  [UIColor lightGrayColor]
#define WhiteColor      [UIColor whiteColor]

//布局
#define ScreenWidth     [UIScreen mainScreen].bounds.size.width
#define ScreenHeight    [UIScreen mainScreen].bounds.size.height

//图片
#define TempImage       [UIImage imageNamed:@"temp"]
#define Image(name)     [UIImage imageNamed:name]

//StoryBoard
#define VC(storyboardName,vcName) [[UIStoryboard storyboardWithName:storyboardName bundle:nil] instantiateViewControllerWithIdentifier:vcName]

//带参数push到下个控制器
#define PUSH(storyboardName,vcName,vcTitle,paramDictionary){\
UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];\
UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:vcName];\
if (vcTitle) {\
vc.title = vcTitle;\
}\
if (paramDictionary) {\
for (NSString *key in paramDictionary.allKeys){\
[vc setValue:paramDictionary[key] forKey:key];\
}\
}\
[self.navigationController pushViewController:vc animated:YES];\
}


//隐藏/显示导航栏
#define HideTopBar      [self.navigationController setNavigationBarHidden:YES]
#define showTopBar      [self.navigationController setNavigationBarHidden:NO]

#endif /* Macros_h */
