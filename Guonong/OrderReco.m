//
//  OrderReco.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "OrderReco.h"

@implementation OrderReco

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super init];
    if (self) {
        _oid            =   StringValue(dictionary, KID);
        _status         =   IntNumber(dictionary, Kstatus);
        _transportWay   =   IntNumber(dictionary, KtransportWay);
        _street         =   StringValue(dictionary, Kstreet);
        
        _address        =   StringValue(dictionary, Kaddress);
        _tel            =   StringValue(dictionary, Ktel);
        _city           =   StringValue(dictionary, Kcity);
        _transStartTime =   DateValue(dictionary, KtransStartTime);
        
        _transEndTime   =   DateValue(dictionary, KtransEndTime);
        _user           =   [[User alloc] initFromDictionary:DictionaryValue(dictionary, Kuser)];
        
        NSArray *fruitRecos = ArrayValue(dictionary, KfruitReco);
        NSMutableArray *models = [NSMutableArray new];
        for (NSDictionary* reco in fruitRecos)
        {
            FruitReco *model = [[FruitReco alloc] initFromDictionary:reco];
            [models addObject:model];
        }
        _fruitReco = models;
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" oid : %@,\n status : %d,\n transportWay : %d,\n street : %@,\n address : %@,\n tel : %@,\n city : %@,\n transStartTime : %@,\n transEndTime : %@,\n user : %@,\n recos.count : %d,\n recos : %@,\n",self.oid,self.status,self.transportWay,self.street,self.address,self.tel,self.city,self.transStartTime,self.transEndTime,self.user,self.fruitReco.count,self.fruitReco];
    
    return kvs;
}

@end
