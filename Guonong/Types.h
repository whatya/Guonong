//
//  Types.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/16.
//  Copyright © 2015年 张宝. All rights reserved.
//

#ifndef Types_h
#define Types_h


#pragm -mark 水果类型
typedef NS_ENUM(NSInteger, FruitType) {
    DOMESTIC = 1,// 国产优质水果
    IMPORTED,    // 精致进口水果
    NUT          // 可口干果坚果
};

#pragm -mark 消息类型
typedef NS_ENUM(NSInteger, MessageType) {
    COMMENT = 1, // 与评论相关
    ORDER_RECO,  // 与订单相关
};


#endif /* Types_h */
