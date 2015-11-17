//
//  Feedback.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "Feedback.h"

@implementation Feedback

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super init];
    if (self) {
        _fid        =       StringValue(dictionary, KID);
        _user       =       [[User alloc] initFromDictionary:DictionaryValue(dictionary, Kuser)];
        _content    =       StringValue(dictionary, Kcontent);
        _createTime =       DateValue(dictionary, KcreateTime);
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" fid : %@,\n user : %@,\n content : %@,\n createTime : %@,\n",self.fid,self.user,self.content,self.createTime];
    return kvs;
}

@end
