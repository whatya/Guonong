//
//  Comment.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "Comment.h"

@implementation Comment

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super init];
    if (self) {
        _cid        =       StringValue(dictionary, KID);
        _user       =       [[User alloc] initFromDictionary:DictionaryValue(dictionary, Kuser)];
        _images     =       ArrayValue(dictionary, Kimages);
        _content    =       StringValue(dictionary, Kcontent);
        
        _beCommented=       [[Comment alloc] initFromDictionary:DictionaryValue(dictionary, KbeCommented)];
        _createTime =       DateValue(dictionary, KcreateTime);
        _ownerId    =       StringValue(dictionary, KopenId);
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" cid : %@,\n user : %@,\n images : %@,\n content : %@,\n beCommented : %@,\n createTime : %@,\n ownerId : %@,\n",self.cid,self.user,self.images,self.content,self.beCommented,self.createTime,self.ownerId];
    return kvs;
}

@end
