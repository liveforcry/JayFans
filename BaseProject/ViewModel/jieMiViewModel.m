//
//  jieMiViewModel.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/28.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "jieMiViewModel.h"
#import "JieNetManager.h"
#import "JieMiModel.h"
@implementation jieMiViewModel



-(void)getMoreDataCompletionHandle:(CompletionHandle)completionHandle{
    _startID += 30;
    [self getDataFromNetCompleteHandle:^(NSError *error) {
        completionHandle(error);
    }];
}

-(void)getDataFromNetCompleteHandle:(CompletionHandle)completionHandle{
    
     self.dataTask = [JieNetManager getDataWithStartId:_startID complehanding:^(id response, NSError *error) {
        if (_startID == 0) {
            [self.dataArr removeAllObjects];
        }
         
         JieMiModel *mode  =  response;
         [self.dataArr addObjectsFromArray:mode.attachment.follows];
         completionHandle(error);
    }];
}

-(void)refreshDataCompletionHandle:(CompletionHandle)completionHandle{
    _startID = 0;
    [self getDataFromNetCompleteHandle:^(NSError *error) {
        completionHandle(error);
    }];

    
}
-(NSInteger)rowNumber{
    return self.dataArr.count;
}
-(JieMiFollows *)getModelForRow : (NSInteger )row{
    return self.dataArr[row];
}

-(NSString *)nickNameForRow : (NSInteger)row{
    return [self getModelForRow:row].nick;
}

-(NSString *)scoreForRow : (NSInteger)row{
  
    return [NSString stringWithFormat:@"积分:%ld",[self getModelForRow:row].score];
}


-(NSInteger)levelForRow :(NSInteger)row{
    return [self getModelForRow:row].level;
};
-(NSURL *)picForRow:(NSInteger)row{
    
    return [NSURL URLWithString:[self getModelForRow:row].headFace];
}

@end
