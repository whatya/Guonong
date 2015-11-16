//
//  CartCell.m
//  Guonong
//
//  Created by 张宝 on 15/11/9.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "CartCell.h"
#import "Macros.h"

@interface CartCell ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *countLB;

@end

@implementation CartCell

- (void)awakeFromNib {
    AddCorner(self.containerView, 0, 1, RGB(79, 79, 79, 1));
}

- (IBAction)changeCount:(UIButton *)sender
{
    int labelCount = [self.countLB.text intValue];
    if (sender.tag == 1973) {
        labelCount --;
    }else{
        labelCount ++;
    }
    if (labelCount < 0) {
        labelCount = 0;
    }
    self.countLB.text = [NSString stringWithFormat:@"%d",labelCount];
}

@end
