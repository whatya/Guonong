//
//  ClassificationTVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/4.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "ClassificationTVC.h"
#import "Macros.h"

@interface ClassificationTVC ()
<UINavigationControllerDelegate>

@end

@implementation ClassificationTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.delegate = self;
    TopBar(self, @"今日推荐", [UIColor whiteColor]);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 2) {
        return ScreenWidth / 2;
    }else{
        return ScreenWidth / 1.8;
    }
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
