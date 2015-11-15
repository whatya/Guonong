//
//  Tool.h
//  Guonong
//
//  Created by 张宝 on 15/10/27.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ProgressHUD.h"

void AddCorner(id target, float radius,float borderWith,UIColor *borderColor);

BOOL IsValidPhone(NSString *inputString);

BOOL IsPasswordValidAndGreatThan(int requiredLength,NSString* inputString);

void PopSuccess(NSString *inputString);

void PopError(NSString* inputString);

void InProgress(NSString *inputString);

void MissionEnd();

void TopBar(id target,NSString *title,UIColor *color);

UIColor* RGB(int r,int g,int b,float alph);

NSURL* URL(NSString *url);

UIView *Nib(NSString* nibName,id target);