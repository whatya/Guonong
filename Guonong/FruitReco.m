//
//  FruitReco.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "FruitReco.h"

@implementation FruitReco

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super init];
    if (self) {
        _frid   = StringValue(dictionary, KID);
        _num    = DoubleNumber(dictionary, Knum);
        Fruit *model = [[Fruit alloc] initFromDictionary:DictionaryValue(dictionary, Kfruit)];
        _fruit  = model;
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" frid : %@,\n fruit : %@,\n fid : %f,\n",self.frid,self.fruit,self.num];
    return kvs;
}

@end
