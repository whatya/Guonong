//
//  Street.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "Street.h"

@implementation Street

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super init];
    if (self) {
        _sid        =       StringValue(dictionary, KID);
        _city       =       StringValue(dictionary, Kcity);
        _desc       =       StringValue(dictionary, Kdesc);
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" sid : %@,\n city : %@,\n desc : %@,\n",self.sid,self.city,self.desc];
    return kvs;
}

@end
