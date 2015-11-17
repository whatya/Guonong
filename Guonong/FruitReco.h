//
//  FruitReco.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface FruitReco : NSObject

@property(nonatomic ,strong) NSString*  frid;
@property(nonatomic ,strong) Fruit*     fruit;
@property(nonatomic ,assign) double     num;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
