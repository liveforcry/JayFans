//
//  OnePicCell.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "OnePicCell.h"

@implementation OnePicCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

//用户图标
- (UIImageView *)picUserView{
   _picUserView.layer.cornerRadius = 20;
    _picUserView.clipsToBounds = YES;
    return _picUserView;
}

@end
