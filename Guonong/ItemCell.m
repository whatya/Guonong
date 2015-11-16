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
    AddCorner(self.containerView, 0, 1, RGB(227, 227, 227, 1.0));
}

@end
