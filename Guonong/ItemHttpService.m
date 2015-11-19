//
//  ItemHttpService.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "ItemHttpService.h"

@implementation ItemHttpService

- (void)promotionFruitsFrom:(int)start
                    toIndex:(int)max
                     inCity:(NSString *)cityName
                     result:(void (^)(BOOL, NSString *, NSDictionary *))jsonCallback
{
    NSString *urlString = requestUrlString(ServerAddress, 8080, FetchPromotion);
    
    NSString *valueString = KVs(@[@"start",@"max",@"city"], @[IntString(start),IntString(max),AddSingleQuote(cityName)]);
    
    [[HttpManager sharedManager] requestUrl:urlString withParameterString:valueString andCallback:^(BOOL success, NSDictionary *json, NSError *error) {
        if (!success) {
            jsonCallback(NO,[error localizedDescription],nil);
            return ;
        }
        
        jsonCallback(YES,nil,json);
        
    }];
}

@end
