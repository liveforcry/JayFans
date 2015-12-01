//
//  JieMessageModel.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "JieMessageModel.h"

@implementation JieMessageModel

@end





@implementation JieAttachment

+ (NSDictionary *)objectClassInArray{
    return @{@"slms" : [JieSlms class]};
}

@end


@implementation JieSlms

+(NSDictionary *)replacedKeyFromPropertyName{
    
    return @{@"ID" : @"id"};
}

+ (NSDictionary *)objectClassInArray{
    return @{@"videos" : [JieVideos class], @"lastSupporters" : [JieLastsupporters class], @"refVideos" : [JieRefvideos class],@"photos" : [Photos class]};
}

@end


@implementation JieUser

@end


@implementation JieVideos

@end


@implementation JieMediadetail

@end


@implementation JieMtypeformat
+(NSDictionary *)replacedKeyFromPropertyName{
    
    return @{@"threeToTwo" : @"300-250",@"threeToOne" :@"300-150"};
}

@end


@implementation JiethreeToTwo

@end
@implementation Photos

@end

@implementation JieLastsupporters

@end


@implementation JieRefvideos
+(NSDictionary *)replacedKeyFromPropertyName{
    
    return @{@"ID" : @"id"};
}
@end


