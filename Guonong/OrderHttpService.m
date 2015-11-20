//
//  OrderHttpService.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "OrderHttpService.h"

@implementation OrderHttpService

#pragma mark- 获取所有街区
- (void)allStreetsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(NSString *errorString,NSArray *streets))callback
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindAllStreet);
    
    NSString *params      = JsonParamString(@"data", @{@"start":@(start),@"max":@(max),@"city":cityName});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(NSError *error,NSArray *json) {
        
        if (error) { callback(@"没有数据!",nil); return; };
        
        callback(nil,json);
        
        
    }];

    
}

@end
