//
//  PasswordTVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/7.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "PasswordTVC.h"
#import "Macros.h"

@interface PasswordTVC ()
@property (weak, nonatomic) IBOutlet UITextField *passwordTF1;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF2;
@property (weak, nonatomic) IBOutlet UIButton *doneBtn;
@property (weak, nonatomic) IBOutlet UIView *topContainerView;
@property (weak, nonatomic) IBOutlet UIView *bottomContainerView;

@end

@implementation PasswordTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpBackButton];
    AddCorner(self.topContainerView, 5, 0, nil);
    AddCorner(self.bottomContainerView, 5, 0, nil);
    AddCorner(self.doneBtn, 5, 0, nil);
    TopBar(self, @"设置密码", [UIColor whiteColor]);
    
}

@end
