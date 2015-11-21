//
//  ItemHttpService.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "ItemHttpService.h"

@implementation ItemHttpService

#pragma mark- 获取首页轮播水果
- (void)promotionFruitsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(ResponseCode status,NSArray *fruits))callback;
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindRecos);
    
    NSString *params      = JsonParamString(@"data", @{@"start":@(start),@"max":@(max),@"city":cityName});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(ResponseCode status,NSArray* json) {
        
        callback(status,json);
        
    }];
}

#pragma mark- 获取所有水果（分页）
- (void)allFruitsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(ResponseCode status,NSArray *fruits))callback;
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindAll);
    
    NSString *params      = JsonParamString(@"data", @{@"start":@(start),@"max":@(max),@"city":cityName});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(ResponseCode status,NSArray *json) {
        
        callback(status,json);
        
    }];
}

#pragma mark- 获取水果详情
- (void)fruitDetailWithId:(NSString *)fruitId result:(void (^)(ResponseCode status, NSDictionary *fruit))callback
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindById);
    
    NSString *params      = JsonParamString(@"data", @{@"id":fruitId});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(ResponseCode status,NSDictionary *json) {
        
        callback(status,json);
        
        
    }];

    
}

@end
