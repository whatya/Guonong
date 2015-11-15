//
//  NSUserDefaults+Util.h
//  Guonong
//
//  Created by 张宝 on 15/10/31.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ViewdKey             @"viewdKey"
#define ViewdValue           @"viewd"
#define NotViewdValue        @"notViewd"

@interface NSUserDefaults (Util)

+ (BOOL)isViewd;
+ (void)notViewd;
+ (void)viewd;

@end
