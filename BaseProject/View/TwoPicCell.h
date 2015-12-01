//
//  TwoPicCell.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/25.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JieInfroMationViewModel.h"

@interface TwoPicCell : UITableViewCell

/**
 *  标题
 */
@property (weak, nonatomic) IBOutlet UILabel *titleLb;
/**
 *  图片展示
 */
@property (weak, nonatomic) IBOutlet UICollectionView *collection;

/**
 *  评论数
 */
@property (weak, nonatomic) IBOutlet UILabel *commentLb;
/**
 *  鲜花数
 */
@property (weak, nonatomic) IBOutlet UILabel *flowerLb;
/**
 *  用户头像
 */
@property (weak, nonatomic) IBOutlet UIImageView *picUser;
/**
 *  用户送鲜花数
 */
@property (weak, nonatomic) IBOutlet UILabel *userFlower;
/**
 *  几个人
 */
@property (weak, nonatomic) IBOutlet UILabel *peopleLb;

@property (weak, nonatomic) IBOutlet UIView *tabbarView;

@property(nonatomic,strong)NSArray *phtot;


@end
