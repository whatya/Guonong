//
//  NSUserDefaults+Util.m
//  Guonong
//
//  Created by 张宝 on 15/10/31.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "NSUserDefaults+Util.h"

@implementation NSUserDefaults (Util)

+ (void)viewd
{
    [[NSUserDefaults standardUserDefaults] setObject:ViewdValue forKey:ViewdKey];
}

+ (void)notViewd
{
    [[NSUserDefaults standardUserDefaults] setObject:NotViewdValue forKey:ViewdKey];
}

+ (BOOL)isViewd
{
    NSString *viewdValue = [[NSUserDefaults standardUserDefaults] objectForKey:ViewdKey];
    if ([viewdValue isEqualToString:ViewdValue]) {
        return YES;
    }else{
        return NO;
    }
}

@end
