//
//  Fruit.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit

- (instancetype)initFromDictionary:(NSDictionary *)dicionary
{ShowLog
    self = [super init];
    if (self) {
        _fid            =       StringValue(dicionary, KID);
        _name           =       StringValue(dicionary, Kname);
        _mainPic        =       StringValue(dicionary, KmainPic);
        _price          =       DoubleNumber(dicionary, Kprice);
        
        _saleNum        =       DoubleNumber(dicionary, KsaleNum);
        _intro          =       StringValue(dicionary, Kintro);
        _city           =       StringValue(dicionary, Kcity);
        _province       =       StringValue(dicionary, Kprovince);
        
       // _introductions  =       ArrayValue(dicionary, Kdetails);
        _fruitType      =       IntNumber(dicionary, KfruitType);
        _varieties      =       StringValue(dicionary, Kvarieties);
        _saleWay        =       IntNumber(dicionary, KsaleWay);
        
        _groupOrderNum  =       IntNumber(dicionary, KgroupOrderNum);
        _createTime     =       DateValue(dicionary, KcreateTime);
        
        //描述数组
        NSArray *descsTemp = ArrayValue(dicionary, Kdetails);
        NSMutableArray *arrayTemp = [NSMutableArray new];
        for (NSDictionary *desc in descsTemp){
            FruitDesc *model = [[FruitDesc alloc] initFromDictionary:desc];
            [arrayTemp addObject:model];
        }
        _introductions = arrayTemp;
        
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" fid : %@,\n name : %@,\n mainPic : %@,\n price : %f,\n saleNum : %f,\n intro : %@,\n city : %@,\n province : %@,\n fruitType : %ld,\n varieties : %@,\n saleWay : %ld,\n groupOrderNum : %d,\n createTime : %@,\n introductions.count : %lu,\nintroductions : %@,\n",self.fid,self.name,self.mainPic,self.price,self.saleNum,self.intro,self.city,self.province,(long)self.fruitType,self.varieties,(long)self.saleWay,self.groupOrderNum,self.createTime,(unsigned long)self.introductions.count,self.introductions];
    
    
    return kvs;
}

@end
