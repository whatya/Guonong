//
//  ItemHttpService.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "HttpManager.h"

//获取首页轮播图
#define FetchPromotion @"GuoNongServer/Fruit/findRecos"

@interface ItemHttpService : NSObject

- (void)promotionFruitsFrom:(int)start
                    toIndex:(int)max
                     inCity:(NSString*)cityName
                     result:(void(^)(BOOL success,NSString *errorString,NSDictionary *data))jsonCallback;

@end
