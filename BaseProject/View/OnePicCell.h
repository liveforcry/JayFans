//
//  OnePicCell.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JieInfroMationViewModel.h"
@interface OnePicCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLb;
@property (weak, nonatomic) IBOutlet UIImageView *picView;

@property (weak, nonatomic) IBOutlet UILabel *commentLb;

@property (weak, nonatomic) IBOutlet UILabel *flowerLb;

@property (weak, nonatomic) IBOutlet UIImageView *picUserView;
@property (weak, nonatomic) IBOutlet UILabel *flowerUserLB;



@property (weak, nonatomic) IBOutlet UILabel *peopleLb;


@end
