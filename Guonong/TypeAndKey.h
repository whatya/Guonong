//
//  TypeAndKey.h
//  Guonong
//
//  Created by ZhuXiaoyan on 15/11/17.
//  Copyright © 2015年 张宝. All rights reserved.
//

#ifndef TypeAndKey_h
#define TypeAndKey_h

/*
 枚举定义
*/

#pragma -mark 水果类型
typedef NS_ENUM(NSInteger, FruitType) {
    DOMESTIC = 1,   // 国产优质水果
    IMPORTED,       // 精致进口水果
    NUT             // 可口干果坚果
};

#pragma -mark 消息类型
typedef NS_ENUM(NSInteger, MessageType) {
    COMMENT = 1,    // 与评论相关
    ORDER_RECO      // 与订单相关
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

#pragma -mark 请求状态
typedef NS_ENUM(NSInteger, ResponseCode) {
    SUCCESS = 100,
    FAILURE,
    EXIST,
    NO_EXIST,
    DATA_ERROR,
    SERVER_ERROR,
    DISCONNECT
};


/*
 字典key定义
 */

#define KID             @"id"
#define Kname           @"name"
#define Kcontent        @"content"
#define Kimage          @"image"

#define KmainPic        @"mainPic"
#define Kprice          @"price"
#define KsaleNum        @"saleNum"
#define Kintro          @"intro"         //简介

#define Kcity           @"city"
#define Kprovince       @"province"
#define Kdetails        @"descriptions"  //图文描述
#define KfruitType      @"fruitType"     //国产水果、进口水果等

#define Kvarieties      @"varieties"     //苹果、香蕉等
#define KsaleWay        @"saleWay"
#define KgroupOrderNum  @"groupOrderNum"
#define KcreateTime     @"createTime"

#define Kfruit          @"fruit"
#define Knum            @"num"
#define KfromUser       @"fromUser"
#define KreceUser       @"receUser"

#define KmsgType        @"msgType"
#define KownerId        @"ownerId"
#define KcreateTime     @"createTime"
#define Kuser           @"user"

#define Kstatus         @"status"
#define KtransportWay   @"transportWay"
#define KfruitReco      @"fruitReco"
#define Kstreet         @"street"

#define Kaddress        @"address"
#define Ktel            @"tel"
#define Kcity           @"city"
#define KtransStartTime @"transStartTime"

#define KtransEndTime   @"transEndTime"
#define KnickName       @"nickName"
#define Kphoto          @"photo"
#define Ksex            @"sex"

#define Kscore          @"score"
#define Kpassword       @"password"
#define KopenId         @"openId"
#define Kimages         @"images"

#define KbeCommented    @"beCommented"
#define Kdesc           @"desc"


#endif /* TypeAndKey_h */
