//
//  PhoneTVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/7.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "PhoneTVC.h"
#import "Macros.h"

@interface PhoneTVC ()

@property (weak, nonatomic) IBOutlet UIView *codeContainerView;
@property (weak, nonatomic) IBOutlet UIView *phoneContainerView;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UIButton *codeTriggerBtn;
@property (weak, nonatomic) IBOutlet UITextField *codeTF;
@property (weak, nonatomic) IBOutlet UIButton *doneBtn;

@end

@implementation PhoneTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    TopBar(self, self.incomingTitle, [UIColor whiteColor]);
    [self setUpBackButton];
    AddCorner(self.phoneContainerView, 5, 0, nil);
    AddCorner(self.codeTriggerBtn, 5, 0, nil);
    AddCorner(self.codeContainerView, 5, 0, nil);
    AddCorner(self.doneBtn, 5, 0, nil);

}



@end
