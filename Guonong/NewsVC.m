//
//  NewsVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/5.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "NewsVC.h"
#import "Macros.h"
#import "NewsCell.h"

@interface NewsVC ()<
UITableViewDataSource,
UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation NewsVC

#define NewsCellID @"NewsCell"

- (void)viewDidLoad {
    [super viewDidLoad];
    TopBar(self, @"消息", [UIColor whiteColor]);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:NewsCellID];
    return cell;
}

@end
