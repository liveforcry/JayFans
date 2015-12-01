//
//  jieMiViewModel.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"

@interface jieMiViewModel : BaseViewModel

@property(nonatomic)NSInteger rowNumber;

-(NSString *)nickNameForRow : (NSInteger)row;

-(NSString *)scoreForRow : (NSInteger)row;


-(NSInteger)levelForRow :(NSInteger)row;

-(NSURL *)picForRow : (NSInteger)row;

@property(nonatomic)NSInteger startID;
@end
