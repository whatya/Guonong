//
//  NewsCell.m
//  Guonong
//
//  Created by 张宝 on 15/11/5.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "NewsCell.h"

@implementation NewsCell

- (void)awakeFromNib {
    AddCorner(self.avatarIMV, self.avatarIMV.bounds.size.width/2, 0, nil);
}


@end
