//
//  ItemCell.m
//  Guonong
//
//  Created by 张宝 on 15/11/3.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell

- (void)awakeFromNib {
    AddCorner(self.containerView, 0, 1, RGB(211, 211, 211, 1.0));
}

@end
