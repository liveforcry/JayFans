//
//  TwoPicCell.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/25.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TwoPicCell.h"
#import "iCarousel.h"

#import "JieMessageModel.h"
@interface TwoPicCell ()//<UICollectionViewDelegateFlowLayout>

@end
#define magin 10

@implementation TwoPicCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

- (void)setPhtot:(NSArray *)phtot
{
    _phtot = phtot;
    
    [self.collection reloadData];
}

#pragma mark <UICollectionViewDataSource>

//
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    NSLog(@"%ld",self.phtot.count);
    return self.phtot.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"indexPATH = %ld",indexPath.row);
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collCell" forIndexPath:indexPath];  
    UIImageView *image = (UIImageView *)[cell viewWithTag:100];
    
    Photos *phtot =  self.phtot[indexPath.row];
    [image  setImageWithURL: [NSURL URLWithString:phtot.mtypeFormat.threeToTwo.url] placeholderImage:[UIImage imageNamed:@"cell_bg_noData_3"]];
    
    return cell;
}
//四周边距
//
//-(UIEdgeInsets )collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
//    return UIEdgeInsetsMake(2, 2, 2, 2);
//}
////行间距
//-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
//    return 2;
//}
////列间距
//-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
//    return 0;
//}
////每个Cell的大小
//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//   
//    return CGSizeMake(75, 75);
//}
//用户头像自定义
-(UIImageView *)picUser{

    _picUser.layer.cornerRadius = 20;
    _picUser.clipsToBounds = YES;
    
    return _picUser;
}

-(UICollectionView *)collection{

    _collection.userInteractionEnabled = YES;
    _collection.scrollEnabled = YES;
    _collection.backgroundColor = [UIColor clearColor];
    return _collection;
}



@end
