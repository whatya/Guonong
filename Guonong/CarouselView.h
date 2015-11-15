//
//  CarouselView.h
//  Guonong
//
//  Created by 张宝 on 15/11/1.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Macros.h"

@interface CarouselView : UIView<UIScrollViewDelegate>

@property (weak, nonatomic)     IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic)     IBOutlet UIPageControl *pageControl;
@property (strong,nonatomic)    NSArray *urlsArray;
@property (nonatomic,assign)    int     index;
@property (nonatomic,strong)    NSTimer *timer;

@end
