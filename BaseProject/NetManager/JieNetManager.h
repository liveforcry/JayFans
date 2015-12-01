//
//  JieNetManager.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"

@interface JieNetManager : BaseNetManager

typedef NS_ENUM(NSUInteger, JieType) {
// JieTypeJieMi,         // 杰迷
    JieTypePic,           // 图片
    JieTypeVedio,         // 视频
    JieTypeJieZuo,        // 杰作
//    JieTypeJieMi,         // 杰迷
};
/**
 *  获取数据杰图  杰视  杰作
 *
 *  @param type  是什么类型
 *  @param pageid  
 *  @param complete
 *
 *  @return
 */
+(id)getDataWithType : (JieType) type   complehanding : (void (^)(id response, NSError *error))complete;
/**
 *  资讯
 *
 *  @param type
 *  @param pageid
 *  @param complete
 *
 *  @return
 */

+(id)getDataWithPageID  : (long) pageid  complehanding : (void (^)(id response, NSError *error))complete;
/**
 *  获取杰迷
 *
 *  @param type
 *  @param pageid
 *  @param complete
 *
 *  @return
 */
+(id)getDataWithStartId  : (long) startid  complehanding : (void (^)(id response, NSError *error))complete;

@end

