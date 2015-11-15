//
//  ItemDescVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/7.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "ItemDescVC.h"
#import "Macros.h"

@interface ItemDescVC ()
<UITableViewDelegate,
UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ItemDescVC

#define ItemCellID @"ItemDescCell"

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self setUpBackButton];
    TopBar(self, @"水果详情", [UIColor whiteColor]);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ItemCellID];
    return cell;
}

@end
