//
//  NewsCell.h
//  Guonong
//
//  Created by 张宝 on 15/11/5.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Macros.h"

@interface NewsCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *avatarIMV;
@property (weak, nonatomic) IBOutlet UILabel *nameLB;
@property (weak, nonatomic) IBOutlet UILabel *dateLB;
@property (weak, nonatomic) IBOutlet UITextView *contentTV;


@end
