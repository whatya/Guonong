//
//  Types.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/16.
//  Copyright © 2015年 张宝. All rights reserved.
//

#ifndef Types_h
#define Types_h


#pragma -mark 水果类型
typedef NS_ENUM(NSInteger, FruitType) {
    DOMESTIC = 1,// 国产优质水果
    IMPORTED,    // 精致进口水果
    NUT          // 可口干果坚果
};

#pragma -mark 消息类型
typedef NS_ENUM(NSInteger, MessageType) {
    COMMENT = 1, // 与评论相关
    ORDER_RECO   // 与订单相关
};

#pragma -mark 订单状态
typedef NS_ENUM(NSInteger, OrderStatus) {
    NO_COMPLETE = 1, // 未完成（默认）
    WAITING,         // 等待后台处理中...
    TRANSITING,      // 配送中
    FINISHED,        // 已完成
    CANCELED         // 已取消
};

#pragma -mark 促销方式
typedef NS_ENUM(NSInteger, SaleWay) {
    COMMON_PRICE = 1, // 平价，普通价格
    GROUP_PRICE       // 特价团购
};

#pragma -mark 配货方式
typedef NS_ENUM(NSInteger, TransportWay) {
    RESERVE = 1,      // 预定送货时间
    FAST              // 闪电购
};

#endif /* Types_h */
