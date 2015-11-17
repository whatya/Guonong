//
//  User.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super init];
    if (self) {
        _uid        =       StringValue(dictionary, KID);
        _nickName   =       StringValue(dictionary, KnickName);
        _photo      =       StringValue(dictionary, Kphoto);
        _sex        =       IntNumber(dictionary, Ksex);
        
        _tel        =       StringValue(dictionary, Ktel);
        _address    =       StringValue(dictionary, Kaddress);
        _score      =       IntNumber(dictionary, Kscore);
        _password   =       StringValue(dictionary, Kpassword);
        
        _openId     =       StringValue(dictionary, KopenId);
        _createTime =       DateValue(dictionary, KcreateTime);
        
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" uid : %@,\n nickName : %@,\n photo : %@,\n sex : %d,\n tel : %@,\n address : %@,\n score : %d,\n password : %@,\n openId : %@,\n createTime : %@,\n",self.uid,self.nickName,self.photo,self.sex,self.tel,self.address,self.score,self.password,self.openId,self.createTime];
    
    return kvs;
}

@end
