//
//  UserHttpService.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "UserHttpService.h"

@implementation UserHttpService

- (void)newUserWithOpenId:(NSString*)openId
                 nickName:(NSString*)nickName
                   gender:(int)gender
                      tel:(NSString*)tel
                 password:(NSString*)password
                   result:(void(^)(ResponseCode status,NSDictionary *enrolledUser))callback
{
    NSString *urlString = RequestUrlString(ServerAddress, HttpPort, Open);
    
    NSString *params = JsonParamString(@"data", @{@"openId" : openId,
                                                  @"nickname" : nickName,
                                                  @"sex" : @(gender),
                                                  @"tel" : tel,
                                                  @"password" : password});
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(ResponseCode statusCode, id json) {
        callback(statusCode,json);
    }];
    
}

- (void)newUserWithTel:(NSString*)tel
              password:(NSString*)password
                result:(void(^)(ResponseCode status,NSDictionary *enrolledUser))callback
{
    NSString *urlString = RequestUrlString(ServerAddress, HttpPort, Register);
    
    NSString *params = JsonParamString(@"data", @{@"tel" : tel,@"password" : password});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(ResponseCode statusCode, id json) {
        callback(statusCode,json);
    }];

}

@end
