//
//  SetTVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/7.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "SetTVC.h"
#import "Macros.h"

@interface SetTVC ()

@end

@implementation SetTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpBackButton];
    TopBar(self, @"设置", [UIColor whiteColor]);
}

@end
