//
//  JieMiModel.m
//  JayFans
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "JieMiModel.h"

@implementation JieMiModel

@end
@implementation JieMiAttachment

+ (NSDictionary *)objectClassInArray{
    return @{@"follows" : [JieMiFollows class]};
}

@end


@implementation JieMiFollows

@end


