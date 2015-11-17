//
//  Comment.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "User.h"

@interface Comment : NSObject

@property (nonatomic, strong) NSString* cid;
@property (nonatomic, strong) User*     user;
@property (nonatomic, strong) NSArray*  images;
@property (nonatomic, strong) NSString* content;

@property (nonatomic, strong) Comment*  beCommented;
@property (nonatomic, strong) NSDate*   createTime;
@property (nonatomic, strong) NSString* ownerId;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
