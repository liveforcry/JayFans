//
//  JiePicCollectionViewController.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/27.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "JiePicCollectionViewController.h"
#import "jieTypeViewModel.h"

#import "OnePicCell.h"
#import "TwoPicCell.h"
#import "JiemICell.h"
@interface JiePicCollectionViewController ()<UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong)jieTypeViewModel *typeViewModel;
@end
#define magin 10

@implementation JiePicCollectionViewController


- (jieTypeViewModel *)typeViewModel {
    if(_typeViewModel == nil) {
        _type = 1;
        _typeViewModel = [[jieTypeViewModel alloc] initWithType:_type];
    }
    return _typeViewModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];

        self.collectionView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            [self.typeViewModel refreshDataCompletionHandle:^(NSError *error) {
                [self.collectionView reloadData];
                [self.collectionView.header endRefreshing];
            }];
        }];
        
         
    [self.collectionView registerClass:[UICollectionViewCell  class] forCellWithReuseIdentifier:@"picell"];
    [self.collectionView.header beginRefreshing];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.typeViewModel.rowNumber;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"piccell" forIndexPath:indexPath];
    UIImageView *image =  (UIImageView *)[cell viewWithTag:100];
    image.clipsToBounds = YES;
    
    UILabel *titleLB = (UILabel *)[cell viewWithTag:200];
    [image setImageWithURL:[self.typeViewModel picForRow:indexPath.row] placeholderImage:[UIImage imageNamed:@"cell_bg_noData_3"]];
    UILabel *timeLb = (UILabel *)[cell viewWithTag:250];
    titleLB.text = [self.typeViewModel titleForRow:indexPath.row];
    if (_type == JieTypePic) {
        timeLb.text = [self.typeViewModel numberPicInCorner:indexPath.row];
    }else{
        timeLb.text = [self.typeViewModel videoTime:indexPath.row];
    }
    
    return cell;
}

#pragma mark <UICollectionViewDelegateFlowLayout>
//每个cell的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat width  = (kWindowW - magin  - 2 * magin) / 2;
 
    CGFloat height = width* 312 / 400;
    
    return  CGSizeMake(width, height);
}
//四周边缘
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(magin, magin, magin, magin);
}
//行间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return magin;
}
//列间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return magin;
}


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/


@end
