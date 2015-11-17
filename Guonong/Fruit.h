//
//  Fruit.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "FruitDesc.h"

@interface Fruit : NSObject

@property (nonatomic,strong) NSString*          fid;
@property (nonatomic,strong) NSString*          name;
@property (nonatomic,strong) NSString*          mainPic;
@property (nonatomic,assign) double             price;

@property (nonatomic,assign) double             saleNum;
@property (nonatomic,strong) NSString*          intro;
@property (nonatomic,strong) NSString*          city;
@property (nonatomic,strong) NSString*          province;

@property (nonatomic,strong) NSArray*           introductions;
@property (nonatomic,assign) FruitType          fruitType;
@property (nonatomic,strong) NSString*          varieties;
@property (nonatomic,assign) SaleWay            saleWay;

@property (nonatomic,assign) int                groupOrderNum;
@property (nonatomic,strong) NSDate*            createTime;

- (instancetype)initFromDictionary:(NSDictionary*)dicionary;

@end
