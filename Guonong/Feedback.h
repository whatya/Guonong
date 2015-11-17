//
//  Feedback.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "User.h"

@interface Feedback : NSObject

@property (nonatomic, strong) NSString* fid;
@property (nonatomic, strong) User*     user;
@property (nonatomic, strong) NSString* content;
@property (nonatomic, strong) NSDate*   createTime;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
