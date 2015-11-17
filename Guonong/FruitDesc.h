//
//  FruitDesc.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"

@interface FruitDesc : NSObject

@property (nonatomic,strong) NSString*      fdid;
@property (nonatomic,strong) NSString*      content;
@property (nonatomic,strong) NSString*      image;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
