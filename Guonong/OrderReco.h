//
//  OrderReco.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "Fruit.h"
#import "User.h"
#import "FruitReco.h"

@interface OrderReco : NSObject

@property (nonatomic, strong) NSString*     oid;
@property (nonatomic, assign) OrderStatus   status;
@property (nonatomic, assign) TransportWay  transportWay;
@property (nonatomic, strong) NSArray*      fruitReco;

@property (nonatomic, strong) NSString*     street;
@property (nonatomic, strong) NSString*     address;
@property (nonatomic, strong) NSString*     tel;
@property (nonatomic, strong) NSString*     city;

@property (nonatomic, strong) NSDate*       transStartTime;
@property (nonatomic, strong) NSDate*       transEndTime;
@property (nonatomic, strong) User*         user;

- (instancetype)initFromDictionary:(NSDictionary*)dictionary;

@end
