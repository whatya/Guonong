//
//  CartVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/9.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "CartVC.h"
#import "Macros.h"

@interface CartVC ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *shopMoreBtn;

@end

@implementation CartVC

#define CartCellID @"CartCell"

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate  = self;
    self.tableView.dataSource = self;
    [self setUpBackButton];
    TopBar(self, @"购物车", WhiteColor);
    AddCorner(self.shopMoreBtn, 5, 0, nil);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView dequeueReusableCellWithIdentifier:CartCellID];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 115;
}

@end
