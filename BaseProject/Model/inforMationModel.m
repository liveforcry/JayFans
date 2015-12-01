//
//  inforMationModel.m
//  BaseProject
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "inforMationModel.h"

@implementation inforMationModel


+ (NSDictionary *)objectClassInArray{
    return @{@"articles" : [InfroArticles class]};
}
@end
@implementation InfroClip

@end


@implementation InfroArticles

+ (NSDictionary *)objectClassInArray{
    return @{@"images" : [InfroImages class], @"comments" : [InfroComments class]};
}

@end


@implementation InfroStat

@end


@implementation InfroSource

@end


@implementation InfroImages

@end


@implementation InfroComments

@end


