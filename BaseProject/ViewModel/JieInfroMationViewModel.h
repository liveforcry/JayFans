//
//  JieInfroMationViewModel.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"

@interface JieInfroMationViewModel : BaseViewModel

//界面层

/**
 *  行数
 */
@property(nonatomic)NSInteger rowNumber;
/**
 * 页数编号
 */
@property(nonatomic)NSInteger pid;
/**
 *  显示图的数组
 */
@property(nonatomic,strong)NSArray  *picArrays;
/**
 *  标题
 */
-(NSString *)titleForrRow : (NSInteger )row;
/**
 *  一张图片
 */
-(NSURL *)imageCoverForRow : (NSInteger)row;
/**
 *  鲜花数
 */
-(NSInteger)flowersFoRow :(NSInteger)row;
/**
 *  评论数
 */
-(NSInteger)commentsForRow : (NSInteger)row;
/**
 *  人数
 */
-(NSString *)peopleNumForRow : (NSInteger)row;
/**
 *  用户的图标
 */
-(NSURL *)imageUserForRow : (NSInteger)row;
/**
 *  用户献花数
 */
-(NSString *)flowersUserForRow : (NSInteger)row;
/**
 *  cell 是否是一张图片
 */
-(BOOL )isOnePic : (NSInteger)row;
/**
 * 图片数组的个数
 */
-(NSInteger)numberInPicArray;

-(NSURL *)urlWithMangPic : (NSInteger )row;









@end
