//
//  AboutTVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/8.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "AboutTVC.h"
#import "Macros.h"

@interface AboutTVC ()

@end

@implementation AboutTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpBackButton];
    TopBar(self, @"关于我们", WhiteColor);
}



@end
