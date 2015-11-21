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
- (void)allStreetsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(ResponseCode status,NSArray *streets))callback
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindAllStreet);
    
    NSString *params      = JsonParamString(@"data", @{@"start":@(start),@"max":@(max),@"city":cityName});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(ResponseCode status,NSArray *json) {
        
        callback(status,json);
        
    }];

    
}

@end
