//
//  AppDelegate+API.m
//  Guonong
//
//  Created by 张宝 on 15/11/19.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "AppDelegate+API.h"

@implementation AppDelegate (API)

- (void)test
{
    ItemHttpService *itemService = [[ItemHttpService alloc] init];
    [itemService promotionFruitsFrom:0 toIndex:3 inCity:@"武汉" result:^(BOOL success, NSString *errorString, NSDictionary *data) {
        NSLog(@"%@",data);
    }];
}

@end
