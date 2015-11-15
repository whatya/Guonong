//
//  ItemListVC.m
//  Guonong
//
//  Created by 张宝 on 15/11/7.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "ItemListVC.h"
#import "Macros.h"

@interface ItemListVC ()
<UICollectionViewDataSource,
UICollectionViewDelegate,
UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ItemListVC

#define ItemCellID          @"ItemCell"
#define ItemCellXibName     @"ItemCell"
#define CellSpace           15

- (void)viewDidLoad {
    [super viewDidLoad];
    TopBar(self, @"水果列表", [UIColor whiteColor]);
    [self setUpBackButton];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    //注册自定义xib cell
    UINib *itemCellXib = [UINib nibWithNibName:ItemCellXibName bundle:nil];
    [self.collectionView registerNib:itemCellXib forCellWithReuseIdentifier:ItemCellID];
}

#pragma mark- 数据源、代理方法

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    PUSH(@"Main", @"ItemDescVC", @"", @{});
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ItemCellID forIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat cellWidth = (ScreenWidth - (CellSpace * 3))/2;
    return CGSizeMake(cellWidth, cellWidth + 60);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                       layout:(UICollectionViewLayout *)collectionViewLayout
       insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(CellSpace, CellSpace, CellSpace, CellSpace);
}

- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    if ([viewController isKindOfClass:[self class]]) {
        [self.tabBarController.tabBar setHidden:NO];
    }else{
        [self.tabBarController.tabBar setHidden:YES];
    }
}



@end
