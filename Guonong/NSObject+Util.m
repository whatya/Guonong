//
//  NSObject+Util.m
//  Guonong
//
//  Created by 张宝 on 15/10/24.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "NSObject+Util.h"
#import <UIKit/UIKit.h>

@implementation NSObject (Util)

#pragma mark- 获取设备型号
- (int)phoneVersion
{
    CGRect rect = [UIScreen mainScreen].bounds;
    int screenHeight = rect.size.height;
    switch (screenHeight) {
        case 480:return 4;break;
        case 568:return 5;break;
        case 667:return 6;break;
        case 736:return 7;break;
        default: return 6;break;
    }
}

@end
