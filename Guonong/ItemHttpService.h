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
#define FindRecos @"GuoNongServer/Fruit/findRecos"

//获取所有水果列表
#define FindAll   @"GuoNongServer/Fruit/findAll"

//根据id获取水果详情
#define FindById  @"GuoNongServer/Fruit/findById"

@interface ItemHttpService : NSObject

- (void)promotionFruitsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(NSString *errorString,NSArray *fruits))callback;

- (void)allFruitsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(NSString *errorString,NSArray *fruits))callback;

- (void)fruitDetailWithId:(NSString*)fruitId result:(void(^)(NSString *errorString,NSDictionary *fruit))callback;

@end
