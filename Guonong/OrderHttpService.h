//
//  OrderHttpService.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "HttpManager.h"

//获取某个城市下面的街区列表
#define FindAllStreet @"GuoNongServer/Street/findAll"

@interface OrderHttpService : NSObject

- (void)allStreetsFrom:(int)start toIndex:(int)max inCity:(NSString*)cityName result:(void(^)(NSString *errorString,NSArray *streets))callback;


@end
