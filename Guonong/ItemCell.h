//
//  ItemCell.h
//  Guonong
//
//  Created by 张宝 on 15/11/3.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Macros.h"

@interface ItemCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView         *containerView;
@property (weak, nonatomic) IBOutlet UIImageView    *imageView;
@property (weak, nonatomic) IBOutlet UILabel        *nameLB;
@property (weak, nonatomic) IBOutlet UILabel        *priceLB;

@end
