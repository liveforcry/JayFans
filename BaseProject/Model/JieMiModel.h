//
//  JieMiModel.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class JieMiAttachment,JieMiFollows;
@interface JieMiModel : BaseModel

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, copy) NSString *message;

@property (nonatomic, copy) NSString *debug;

@property (nonatomic, strong) JieMiAttachment *attachment;

@end
@interface JieMiAttachment : NSObject

@property (nonatomic, strong) NSArray<JieMiFollows *> *follows;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, assign) NSInteger myRank;

@end

@interface JieMiFollows : NSObject

@property (nonatomic, assign) NSInteger rank;

@property (nonatomic, copy) NSString *headFace;

@property (nonatomic, assign) NSInteger userflower;

@property (nonatomic, assign) NSInteger rcode;

@property (nonatomic, assign) NSInteger eachOther;

@property (nonatomic, copy) NSString *level1;

@property (nonatomic, assign) NSInteger userpopularity;

@property (nonatomic, assign) NSInteger followed;

@property (nonatomic, assign) NSInteger score;

@property (nonatomic, copy) NSString *sign;

@property (nonatomic, assign) NSInteger gender;

@property (nonatomic, copy) NSString *level0;

@property (nonatomic, assign) NSInteger userxpurchase;

@property (nonatomic, assign) NSInteger followedMe;

@property (nonatomic, assign) NSInteger level;

@property (nonatomic, assign) NSInteger head;

@property (nonatomic, assign) NSInteger userscore;

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, copy) NSString *level2;

@property (nonatomic, copy) NSString *nick;

@property (nonatomic, assign) NSInteger vip;

@property (nonatomic, assign) NSInteger vlevel;

@property (nonatomic, copy) NSString *astar;

@end

