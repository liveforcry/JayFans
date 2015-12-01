//
//  JieInfroMationViewModel.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "JieInfroMationViewModel.h"
#import "JieNetManager.h"
#import "JieMessageModel.h"
@implementation JieInfroMationViewModel


//获得数据
- (void)getDataFromNetCompleteHandle:(CompletionHandle)completionHandle{
   self.dataTask = [JieNetManager getDataWithPageID:_pid complehanding:^(id response, NSError *error) {
       JieMessageModel *model = response;
       if (_pid == 0) {
           [self.dataArr removeAllObjects];
       }
      
       [self.dataArr addObjectsFromArray:model.attachment.slms];
  
       completionHandle(error);
   }];
       
    
}
//加载更多
- (void)getMoreDataCompletionHandle:(CompletionHandle)completionHandle{
   
    _pid =  [self getModelForRow:self.dataArr.count - 1].ID;

    [self getDataFromNetCompleteHandle:^(NSError *error) {
        completionHandle(error);
    }];
}
//刷新数据
-(void)refreshDataCompletionHandle:(CompletionHandle)completionHandle{
    _pid = 0;
  
    [self getDataFromNetCompleteHandle:^(NSError *error) {
        completionHandle(error);
    }];
    
}
//发挥每一行的数据模型
-(JieSlms *)getModelForRow : (NSInteger )row{
 
    return self.dataArr[row];
}

//行数

-(NSInteger)rowNumber{
    return self.dataArr.count;
}

-(NSString *)titleForrRow : (NSInteger )row{
    return [self getModelForRow:row].title;
}

-(NSURL *)imageCoverForRow : (NSInteger)row{
    
        Photos *phtot =  _picArrays.firstObject;
    return [NSURL URLWithString:phtot.mtypeFormat.threeToTwo.url];
}

-(NSInteger)flowersFoRow :(NSInteger)row{
    return [self getModelForRow:row].upCount;
}

-(NSInteger)commentsForRow : (NSInteger)row;{
    return [self getModelForRow:row].commentCount;
}

-(NSString *)peopleNumForRow : (NSInteger)row{
    return [NSString stringWithFormat:@"%ld人",[self getModelForRow:row].supporterCount];
}

-(NSURL *)imageUserForRow : (NSInteger)row{
    JieLastsupporters *support = [self getModelForRow:row].lastSupporters.firstObject;
    return [NSURL URLWithString:support.headFace];
}

-(NSString *)flowersUserForRow : (NSInteger)row{

    return [NSString stringWithFormat:@"送%ld朵花",[self getModelForRow:row].lastSupporterUpCount];
}
-(BOOL)isOnePic : (NSInteger)row{
  _picArrays = [self getModelForRow:row].photos;
    if (_picArrays.count  == 1) {
        return YES;
    }else{
        
        return NO;
    }
}
-(NSInteger)numberInPicArray{
   

    return self.picArrays.count;
}

-(NSURL *)urlWithMangPic : (NSInteger )row{
    
    Photos *phtot =  _picArrays[row];
    return [NSURL URLWithString:phtot.mtypeFormat.threeToTwo.url];
}




@end
