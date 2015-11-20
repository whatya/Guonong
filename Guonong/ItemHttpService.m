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
- (void)promotionFruitsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(NSString *errorString,NSArray *fruits))callback;
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindRecos);
    
    NSString *params      = JsonParamString(@"data", @{@"start":@(start),@"max":@(max),@"city":cityName});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(NSError *error,NSArray *json) {
        
        if (error) { callback(@"没有数据!",nil); return; };
        
        callback(nil,json);
        
        
    }];
}

#pragma mark- 获取所有水果（分页）
- (void)allFruitsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(NSString *errorString,NSArray *fruits))callback;
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindAll);
    
    NSString *params      = JsonParamString(@"data", @{@"start":@(start),@"max":@(max),@"city":cityName});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(NSError *error,NSArray *json) {
        
        if (error) { callback(@"没有数据!",nil); return; };
        
        callback(nil,json);
        
        
    }];
}

#pragma mark- 获取水果详情
- (void)fruitDetailWithId:(NSString *)fruitId result:(void (^)(NSString *, NSDictionary *))callback
{ShowLog
    
    NSString *urlString = RequestUrlString(ServerAddress, 8080, FindById);
    
    NSString *params      = JsonParamString(@"data", @{@"id":fruitId});
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:params andCallback:^(NSError *error,NSDictionary *json) {
        
        if (error) { callback(@"没有数据!",nil); return; };
        
        callback(nil,json);
        
        
    }];

    
}

@end
