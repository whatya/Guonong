//
//  Message.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "Message.h"

@implementation Message

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super  init];
    if (self) {
        _mid        =       StringValue(dictionary, KID);
        _fromUser   =       [[User alloc] initFromDictionary:DictionaryValue(dictionary, KfromUser)];
        _receUser   =       [[User alloc] initFromDictionary:DictionaryValue(dictionary, KreceUser)];
        _content    =       StringValue(dictionary, Kcontent);
        
        _msgType    =       IntNumber(dictionary, KmsgType);
        _owerId     =       StringValue(dictionary, KownerId);
        _createTime =       DateValue(dictionary, KcreateTime);
    }
    return self;
}

- (NSString *)description
{
    [super description];
    
    NSString *kvs = [NSString stringWithFormat:@" mid : %@,\n fromUser : %@,\n receUser : %@,\n content : %@,\n msgType : %d,\n owerId : %@,\n createTime : %@",self.mid,self.fromUser,self.receUser,self.content,self.msgType,self.owerId,self.createTime];
    return kvs;
}

@end
