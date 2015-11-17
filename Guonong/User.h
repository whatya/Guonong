//
//  User.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"

@interface User : NSObject

@property(nonatomic, strong) NSString*      uid;
@property(nonatomic, strong) NSString*      nickName;
@property(nonatomic, strong) NSString*      photo;
@property(nonatomic, assign) int            sex;

@property(nonatomic, strong) NSString*      tel;
@property(nonatomic, strong) NSString*      address;
@property(nonatomic, assign) int            score;
@property(nonatomic, strong) NSString*      password;

@property(nonatomic, strong) NSString*      openId;
@property(nonatomic, strong) NSDate*        createTime;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
