//
//  Street.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"

@interface Street : NSObject

@property (nonatomic, strong) NSString* sid;
@property (nonatomic, strong) NSString* city;
@property (nonatomic, strong) NSString* desc;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
