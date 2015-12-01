//
//  jieTypeViewModel.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/27.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "jieTypeViewModel.h"
#import "JieNetManager.h"
@implementation jieTypeViewModel
-(instancetype)initWithType : (JieType)type{
    if (self = [super init]) {
        _type = type;
    }
    return self;
    
}

-(instancetype)init{
    if (self = [super init]) {
        NSAssert1(NO,@"%s必须使用InitWithType初始化", __FUNCTION__);
    }
    return self;
    
}

-(NSInteger )rowNumber{
    return self.dataArr.count;
}
- (NSString *)titleForRow:(NSInteger)row{
    return  [self getModelForRow:row].title;
}
-(NSURL *)picForRow:(NSInteger)row{
    if (_type == JieTypePic) {
        Photos *pic =  [self getModelForRow:row].photos[0];
        return [NSURL URLWithString:pic.mtypeFormat.threeToTwo.url];
    }else {
        JieVideos *video = [self getModelForRow:row].videos[0];
        return [NSURL URLWithString:video.mediaDetail.mtypeFormat.threeToTwo.url];
    }
}
-(JieSlms *)getModelForRow :(NSInteger )row{
    
    return self.dataArr[row];
}
-(void)refreshDataCompletionHandle:(CompletionHandle)completionHandle{
    
    [self getDataFromNetCompleteHandle:^(NSError *error) {
        completionHandle(error);
    }];
    
}
-(void)getDataFromNetCompleteHandle:(CompletionHandle)completionHandle{
    
    self.dataTask = [JieNetManager  getDataWithType:_type complehanding:^(id response, NSError *error) {
        
        JieMessageModel *model = response;
             
        [self.dataArr addObjectsFromArray:model.attachment.slms];
        
        completionHandle(error);

        
    }];
    
}

-(NSString *)numberPicInCorner : (NSInteger)row{
    
    return [NSString stringWithFormat:@"%ldP",[self getModelForRow:row].count];

}

-(NSString *)videoTime : (NSInteger)row{

    JieVideos *video =   [self getModelForRow:row].videos[0];

    NSInteger min = video.times / 60;
    NSInteger seconde = video.times % 60;
    NSString *strMin = nil;
    NSString *strSeconde = nil;
    if (min > 10) {
        strMin = [NSString stringWithFormat:@"%ld",min];
    }else{
       strMin = [NSString stringWithFormat:@"0%ld",min];
    }
    if (seconde > 10) {
        strSeconde = [NSString stringWithFormat:@"%ld",seconde];
    }else{
        strSeconde = [NSString stringWithFormat:@"0%ld",seconde];
    }
    
    return [NSString stringWithFormat:@"%@:%@",strMin,strSeconde];
}
@end
