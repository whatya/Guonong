//
//  OrderCell.m
//  Guonong
//
//  Created by 张宝 on 15/11/8.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "OrderCell.h"
#import "Macros.h"

@interface OrderCell ()
@property (weak, nonatomic) IBOutlet UILabel *dateLB;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *dotIMV;

@end

@implementation OrderCell

- (void)awakeFromNib {
    AddCorner(self.containerView, 5, 0, nil);
    self.dotIMV.image = [self dotImageWithHeigth:88];
    
    
}

- (UIImage*)dotImageWithHeigth:(CGFloat)heigth
{
    UIView *dotContainerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 6, heigth)];
    int dotCounts = heigth / 10;
    UIView *dotoView = nil;
    for (int i = 0; i < dotCounts;i++){
        
        dotoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 6, 6)];
        dotoView.layer.cornerRadius = 3.0f;
        dotoView.backgroundColor = RGB(243, 243, 243, 1);

        dotoView.center = CGPointMake(3, i * 12 + 10);
        [dotContainerView addSubview:dotoView];
    }
    
    UIGraphicsBeginImageContextWithOptions(dotContainerView.bounds.size, NO, [UIScreen mainScreen].scale);//scale
    [dotContainerView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return viewImage;
}

@end
