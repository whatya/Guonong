//
//  GuideVC.m
//  Guonong
//
//  Created by 张宝 on 15/10/24.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "GuideVC.h"
#import "Macros.h"

@interface GuideVC ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic)       BOOL shouldPerformAction;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation GuideVC

- (void)viewDidLoad
{
    ShowLog
    [super viewDidLoad];
    self.scrollView.delegate = self;
    int phoneType = [self phoneVersion];
    self.scrollView.contentSize = CGSizeMake(ScreenWidth * 4, ScreenHeight);
    for (int i = 1; i <= 4; i++) {
        //生成图片视图
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth * (i-1), 0, ScreenWidth, ScreenHeight)];
        //设置图片
        NSString *imageName = [NSString stringWithFormat:@"guide%d%d",phoneType,i];
        imageView.image = Image(imageName);
        //添加到scrollview
        [self.scrollView addSubview:imageView];
    }
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self.view addGestureRecognizer:tap];
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    ShowLog
    int xContentOffset = scrollView.contentOffset.x;
    self.pageControl.currentPage = xContentOffset / ScreenWidth;
    if (xContentOffset == ScreenWidth * 3) {
        self.shouldPerformAction = YES;
    }else{
        self.shouldPerformAction = NO;
    }
}

- (void)tapAction
{
    ShowLog
    if (self.shouldPerformAction) {
        void (^tempAction)() = self.lastPageAction;
        if (tempAction) {
            tempAction();
        }
    }
}

@end
