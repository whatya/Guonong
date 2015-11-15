//
//  LoginVC.h
//  Guonong
//
//  Created by 张宝 on 15/10/24.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginVC : UIViewController

@property (copy, nonatomic) void(^loginCallback)(BOOL success,NSString *errorString,NSDictionary *data);

@property (assign,nonatomic) BOOL showColseBtn;

@end
