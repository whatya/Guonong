//
//  Message.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "User.h"

@interface Message : NSObject

@property (nonatomic, strong) NSString*     mid;
@property (nonatomic, strong) User*         fromUser;
@property (nonatomic, strong) User*         receUser;
@property (nonatomic, strong) NSString*     content;

@property (nonatomic, assign) MessageType   msgType;
@property (nonatomic, strong) NSString*     owerId;
@property (nonatomic, strong) NSDate*       createTime;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
