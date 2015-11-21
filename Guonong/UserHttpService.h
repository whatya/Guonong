//
//  UserHttpService.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Macros.h"
#import "HttpManager.h"

//第三方注册
#define Open @"GuoNongServer/User/open"
//普通注册
#define Register @"GuoNongServer/User/register"

@interface UserHttpService : NSObject

- (void)newUserWithOpenId:(NSString*)openId
                 nickName:(NSString*)nickName
                   gender:(int)gender
                      tel:(NSString*)tel
                 password:(NSString*)password
                   result:(void(^)(ResponseCode status,NSDictionary *enrolledUser))callback;

- (void)newUserWithTel:(NSString*)tel
                 password:(NSString*)password
                   result:(void(^)(ResponseCode status,NSDictionary *enrolledUser))callback;

@end
