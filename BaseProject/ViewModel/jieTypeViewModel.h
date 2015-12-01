//
//  jieTypeViewModel.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/27.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "JieNetManager.h"
#import "JieMessageModel.h"
@interface jieTypeViewModel : BaseViewModel

-(NSString *)titleForRow : (NSInteger)row;


-(NSURL *)picForRow : (NSInteger)row;

-(instancetype)initWithType : (JieType)type;
@property(nonatomic)JieType type;

@property(nonatomic)NSInteger rowNumber;

//杰图的时候右下角显示几张图片
-(NSString *)numberPicInCorner : (NSInteger)row;


-(NSString *)videoTime : (NSInteger)row;
@end
