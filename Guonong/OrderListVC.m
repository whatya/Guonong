//
//  OrderListVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/8.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "OrderListVC.h"
#import "Macros.h"

@interface OrderListVC ()
<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation OrderListVC

#define OrderCellID @"OrderCell"

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpBackButton];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    TopBar(self, @"订单列表", WhiteColor);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView dequeueReusableCellWithIdentifier:OrderCellID];
}

@end
