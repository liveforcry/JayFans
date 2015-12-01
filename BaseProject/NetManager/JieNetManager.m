//
//  JieNetManager.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "JieNetManager.h"
#import "JieMessageModel.h"
#import "JieMiModel.h"

//除杰迷外的基本url
#define KbaseURlForOther  @"http://apiv3.ixingji.com/ixingji/starline/getstarps.json"
//杰迷Url
#define KbaseURLForJieMi  @"http://apiv3.ixingji.com/ixingji/ifollow/followtops.json"
//设置client
#define KSetClient       @"client"  :@"Android"
//设置pname
#define KSetpname         @"pname"  : @"X27A_331_B_206"
//设置appid
#define KSetappid       @"appid"  : @27
//设置lgg
#define KSetlgg         @"lgg"  : @0
//设置pmtfs
#define KSetpmtfs      @"pmtfs"  : @"300-250%2C300-150%2C300-0"
//设置uid
#define KSetuid         @"uid"  : @14175381
//设置sid
#define KSetsid         @"sid"  : @928
//设置mmtfs
#define KSetmmtfs      @"mmtfs"  : @"300-250%2C300-150%2C400-200"

//设置token
#define KSettokens     @"token"  : @"EmEG702qtQhqZP8K"
//设置tag
#define KSettag        @"tag"  : @"%E8%A7%86%E9%A2%91"
//设置vmtfs
#define KSetvmtfs     @"vmtfs"  : @"300-250%2C300-150%2C400-200"
//设置pSize
#define KSetpSize      @"psize"  : @ -1
//设置imagetype
#define KSetimagetype  @"imagetype" : @1
//设置size
#define KSetSize       @"size"  : @20
//设置psid
#define KSetpsid       @"spid"  : @0
@implementation JieNetManager


+(id)getDataWithType : (JieType) type   complehanding : (void (^)(id response, NSError *error))complete{
    NSDictionary *dict = [NSDictionary dictionary];
    switch (type) {

        case JieTypeJieZuo:  //杰作
            dict = @{KSetClient,KSetpname,KSetappid,KSetlgg,KSetpmtfs,KSetuid,KSetsid,KSetmmtfs, KSetmmtfs,KSetpsid,KSettokens,@"tag" : @"MV",KSetvmtfs,KSetpSize,KSetimagetype,KSetSize};
            break;
//
        case JieTypePic:    // 杰图
          dict =@{KSetClient,KSetpname,KSetappid,KSetlgg,KSetpmtfs,KSetuid,KSetsid,KSetmmtfs,
                  KSetpsid,KSettokens,@"tag" : @"%E7%85%A7%E7%89%87",KSetvmtfs,KSetpSize,KSetimagetype,KSetSize};
            break;
        case JieTypeVedio:    //杰视
    dict = @{KSetClient,KSetpname,KSetappid,KSetlgg,KSetpmtfs,KSetuid,KSetsid,KSetmmtfs,KSetpsid,KSettokens,KSettag,KSetvmtfs,KSetpSize,KSetimagetype,KSetSize};
            
            break;
        default:
            break;
    }
    NSString *url = [BaseNetManager dictChangeUrl:dict baseUrL:KbaseURlForOther];
  return  [self GET:url parameters:nil completionHandler:^(id responseObj, NSError *error) {
      
      complete([JieMessageModel objectWithKeyValues:responseObj],error);
   }];
}

//资讯
+(id)getDataWithPageID :(long) pageid  complehanding : (void (^)(id response, NSError *error))complete{
        NSDictionary *dict = [NSDictionary dictionary];
    dict = @{KSetClient,KSetpname,KSetappid,KSetlgg,KSetpmtfs,KSetuid,KSetsid,KSetmmtfs,@"spid" : @(pageid),KSettokens,@"tag" : @"%E6%96%B0%E9%97%BB",KSetvmtfs,KSetpSize,KSetimagetype,KSetSize};
  NSString *url = [BaseNetManager dictChangeUrl:dict baseUrL:KbaseURlForOther];
    return  [self GET:url parameters:nil completionHandler:^(id responseObj, NSError *error) {
        
        complete([JieMessageModel objectWithKeyValues:responseObj],error);
    }];
  
  
}

//杰迷

+(id)getDataWithStartId  : (long) startid  complehanding : (void (^)(id response, NSError *error))complete{
        NSDictionary *dict = [NSDictionary dictionary];
    dict = @{KSetClient,KSetpname,KSetappid,KSetlgg,KSetuid,KSetsid,@"start" : @(startid),KSettokens,KSetSize};
      NSString *url = [BaseNetManager dictChangeUrl:dict baseUrL:KbaseURLForJieMi];
    return  [self GET:url parameters:nil completionHandler:^(id responseObj, NSError *error) {
        
        complete([JieMiModel objectWithKeyValues:responseObj],error);
    }];
    
        
}
    


    
    
    
    
    


@end
