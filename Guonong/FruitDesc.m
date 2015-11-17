//
//  FruitDesc.m
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "FruitDesc.h"

@implementation FruitDesc

- (instancetype)initFromDictionary:(NSDictionary *)dictionary
{ShowLog
    self = [super init];
    if (self) {
        _fdid       =   StringValue(dictionary, KID);
        _content    =   StringValue(dictionary, Kcontent);
        _image      =   StringValue(dictionary, Kimage);
    }
    return self;
}

- (NSString *)description
{
    [super description];
    NSString *kvs = [NSString stringWithFormat:@" fdid : %@,\n content : %@,\n image : %@,\n",self.fdid,self.content,self.image];
    return kvs;
}
@end
