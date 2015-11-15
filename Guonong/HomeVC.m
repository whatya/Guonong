//
//  HomeVC.m
//  Guonong
//
//  Created by 张宝 on 15/10/31.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "HomeVC.h"
#import "ItemCell.h"
#import "CarouselView.h"

#pragma mark- 页面顶部
@interface HomeVC ()
<UICollectionViewDataSource,
UICollectionViewDelegate,
UICollectionViewDelegateFlowLayout,
UINavigationControllerDelegate>
#pragma mark- 属性
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation HomeVC

#define ItemCellID          @"ItemCell"
#define CarouseCellID       @"CarouseCell"

#define ItemCellXibName     @"ItemCell"

#define HeaderID            @"BannerHeader"
#define FooterID            @"HeaderFooter"

#define CellSpace           15

#define Image1              @"http://heilongjiang.sinaimg.cn/2012/0217/U7343P1274DT20120217174903.jpg"
#define Image2              @"http://pic16.nipic.com/20110823/7861063_204214202000_2.jpg"
#define Image3              @"http://pic31.nipic.com/20130803/8821914_142353494000_2.jpg"
#define Image4              @"http://pic12.nipic.com/20101216/6442798_064912184662_2.jpg"

#pragma mark- 控制器什么周期
- (void)viewDidLoad
{
    ShowLog
    [super viewDidLoad];
    TopBar(self, @"今日推荐", [UIColor whiteColor]);
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    //注册自定义xib cell
    UINib *itemCellXib = [UINib nibWithNibName:ItemCellXibName bundle:nil];
    [self.collectionView registerNib:itemCellXib forCellWithReuseIdentifier:ItemCellID];
    self.navigationController.delegate = self;
    
    
}

#pragma mark- 数据源、代理方法

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    PUSH(@"Main", @"ItemDescVC", @"", @{});
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return CGSizeZero;
    }else{
        return CGSizeMake(ScreenWidth, 40);
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    if (section == 0) {
        return CGSizeZero;
    }else{
        return CGSizeMake(ScreenWidth, 40);
    }
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",kind);
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        return [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:HeaderID forIndexPath:indexPath];
    }else{
         return [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:FooterID forIndexPath:indexPath];
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }else{
        return 20;
    }
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CarouseCellID forIndexPath:indexPath];
        CarouselView *carouseView = (CarouselView* )Nib(@"CarouseView", self);
        carouseView.frame = CGRectMake(0, 0, ScreenWidth, 215);
        [cell addSubview:carouseView];
        carouseView.urlsArray = @[Image1,Image2,Image3,Image4];
        return cell;
    }else{
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ItemCellID forIndexPath:indexPath];
        
        return cell;
    }
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return CGSizeMake(ScreenWidth, 215);
    }else{
        CGFloat cellWidth = (ScreenWidth - (CellSpace * 3))/2;
        return CGSizeMake(cellWidth, cellWidth + 60);
    }
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                       layout:(UICollectionViewLayout *)collectionViewLayout
       insetForSectionAtIndex:(NSInteger)section
{
    if (section == 0) {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }else{
        return UIEdgeInsetsMake(0, CellSpace, CellSpace, CellSpace);
    }
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

#pragma mark- 页面底部
@end
