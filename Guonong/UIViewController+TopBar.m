//
//  UIViewController+TopBar.m
//  Guonong
//
//  Created by 张宝 on 15/10/31.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "UIViewController+TopBar.h"

@implementation UIViewController (TopBar)

- (void)setUpBackButton
{
    NSMutableDictionary *textAttrs=[NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:textAttrs];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    
    [backBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(doBack:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -16, 0, 16);
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = backItem;
}

-(void)doBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
