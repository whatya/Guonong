//
//  CarouselView.m
//  Guonong
//
//  Created by 张宝 on 15/11/1.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "CarouselView.h"

@implementation CarouselView

- (void)awakeFromNib
{
    [self.timer invalidate];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:5
                                                  target:self
                                                selector:@selector(play)
                                                userInfo:nil
                                                 repeats:YES];
    [self.timer fire];
}


- (void)setUrlsArray:(NSArray *)urlsArray
{
    _urlsArray = urlsArray;
    self.scrollView.delegate = self;
    if (self.urlsArray.count > 0) {
        [self makeUI];
    }
}

- (void)makeUI
{
    //获取视图宽高
    int imagesCount = (int)self.urlsArray.count;
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height-15;
    //设置pageControl和contentSize
    self.pageControl.numberOfPages = imagesCount;
    self.scrollView.contentSize = CGSizeMake(width * imagesCount, height);
    //设置图片(耗时处理）
    for (int i = 0;i < self.urlsArray.count;i++){
        UIImageView *imageView = [[UIImageView alloc] init];
        [imageView sd_setImageWithURL:URL(self.urlsArray[i])];
        imageView.frame = CGRectMake(width * i, 0, width, height);
        imageView.contentMode = UIViewContentModeScaleToFill;
        [self.scrollView addSubview:imageView];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int offsetX = scrollView.contentOffset.x;
    self.pageControl.currentPage = offsetX / self.bounds.size.width;
}

- (void)play
{
    int width = self.bounds.size.width;
    self.index = self.index + 1;
    if (self.index < self.urlsArray.count) {
        [self.scrollView setContentOffset:CGPointMake(self.index * width, 0) animated:YES];
    }else{
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
        self.index = 0;
    }
    self.pageControl.currentPage = self.index;
}

@end
