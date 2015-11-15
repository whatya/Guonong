//
//  MeTVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/4.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "MeTVC.h"
#import "Macros.h"

@interface MeTVC ()
<UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *avatarIMV;

@end

@implementation MeTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.delegate = self;
    AddCorner(self.avatarIMV, self.avatarIMV.bounds.size.width/2, 0, nil);
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    HideTopBar;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    showTopBar;
}

- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    if ([viewController isKindOfClass:[self class]]) {
        [self.tabBarController.tabBar setHidden:NO];
    }else{
        [self.tabBarController.tabBar setHidden:YES];
    }
}

@end
