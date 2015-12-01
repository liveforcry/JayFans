//
//  JiemICell.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "JiemICell.h"

@implementation JiemICell

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        

      
       
        
    }
    return self;
}

-(UIImageView *)image{
    if (_image == nil) {
        _image = [[UIImageView alloc]init];
        _image.contentMode = 2;
        _image.clipsToBounds = YES;
    }
    [self.contentView addSubview:_image];

        [_image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        
        }];
    
    
    return _image;
}

-(UILabel *)nickNameLB{
    if (_nickNameLB == nil) {
        _nickNameLB = [[UILabel alloc]init];
        _nickNameLB.textColor = [UIColor whiteColor];
        _nickNameLB.font = [UIFont systemFontOfSize:15];
    }
      [self.contentView addSubview:_nickNameLB];
    [_nickNameLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(5);
        make.right.mas_equalTo(-5);

        make.bottomMargin.mas_equalTo(self.levelImage.mas_topMargin).mas_equalTo(-20);
    
    }];
    
    return _nickNameLB;
}
-(UIImageView *)levelImage{
    
    if (_levelImage == nil) {
        _levelImage = [[UIImageView alloc]init];
        _levelImage.contentMode = 2;
        _levelImage.clipsToBounds = YES;
    }
    [self.contentView addSubview:_levelImage];
    [_levelImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(5);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
        make.bottom.mas_equalTo(-5);
    }];
    
    
    return _levelImage;
}


-(UILabel *)scoreLB{
    if (_scoreLB == nil) {
        _scoreLB = [[UILabel alloc]init];
        _scoreLB.textColor = [UIColor whiteColor];
        _scoreLB.font = [UIFont systemFontOfSize:14];
    }
    
    [self.contentView addSubview:_scoreLB];
    [_scoreLB mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.levelImage.mas_right).mas_equalTo(5);
        make.bottom.mas_equalTo(-5);
        
    }];
    return _scoreLB;
}








@end
