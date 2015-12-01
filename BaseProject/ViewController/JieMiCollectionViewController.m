//
//  JieMiCollectionViewController.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "JieMiCollectionViewController.h"
#import "jieMiViewModel.h"
#import "JiemICell.h"

@interface JieMiCollectionViewController () <UICollectionViewDelegateFlowLayout>
@property(nonatomic,strong)jieMiViewModel *jieMiVM;
@end
#define magin 5
@implementation JieMiCollectionViewController

- (jieMiViewModel *)jieMiVM {
    if(_jieMiVM == nil) {
        _jieMiVM = [[jieMiViewModel alloc] init];
    }
    return _jieMiVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self.jieMiVM refreshDataCompletionHandle:^(NSError *error) {
            [self.collectionView.header endRefreshing];
            [self.collectionView reloadData];
        }];
    }];
    
    self.collectionView.footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
      [self.jieMiVM getMoreDataCompletionHandle:^(NSError *error) {
          [self.collectionView.footer endRefreshing];
          [self.collectionView reloadData];
      }];
    }];
    
    [self.collectionView registerClass:[JiemICell class] forCellWithReuseIdentifier:@"cell"];
    [self.collectionView.header beginRefreshing];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



#pragma mark <UICollectionViewDataSource>



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self.jieMiVM rowNumber];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JiemICell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    //背景图片
    [cell.image setImageWithURL:[self.jieMiVM picForRow:indexPath.row] placeholderImage:[UIImage imageNamed:@"cell_bg_noData_3"]];
    //名字
    
    NSString *str =  [self.jieMiVM nickNameForRow:indexPath.row];
    cell.nickNameLB.text = str;
    NSString *strImage = [NSString stringWithFormat:@"common_icon_membership_level%ld",[self.jieMiVM levelForRow:indexPath.row]];
    //等级
    cell.levelImage.image = [UIImage imageNamed:strImage];
    
    //得分
    
    cell.scoreLB.text = [self.jieMiVM scoreForRow:indexPath.row];
    //设置粉丝top3之内的字体颜色和图标
    [self setTop3 : cell.scoreLB item2:cell.nickNameLB];
    return cell;
}
-(void)setTop3 : (UILabel *)item1 item2 : (UILabel *)item2{
    
    
}
#pragma mark uicollecionViewFlowLayout
//item的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        NSInteger width = kWindowW;
        NSInteger height = width * 635 / 1071 ;
        return CGSizeMake(width, height);
    }else if (indexPath.row == 1 || indexPath.row == 2){
        
        NSInteger width = (kWindowW - magin) / 2;
        NSInteger height = width * 372 / 525 ;
        return CGSizeMake(width, height);
        
    }else{
        
        NSInteger width = (kWindowW - 2 * magin) / 3;
    
        NSInteger height = width * 349 / 353 ;
        return CGSizeMake(width, height);
        
    }
}
//四周边距
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}
//行距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return magin;
}
//列举
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return magin;
}
//
//

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
