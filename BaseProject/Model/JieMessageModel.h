//
//  JieMessageModel.h
//  JayFans
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"


@class JieAttachment,JieSlms,JieUser,Photos,JieVideos,JieMediadetail,JieMtypeformat,JiethreeToTwo,JieLastsupporters,JieRefvideos;
@interface JieMessageModel : BaseModel

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, copy) NSString *message;

@property (nonatomic, copy) NSString *debug;

@property (nonatomic, strong) JieAttachment *attachment;


@end@interface JieAttachment : NSObject

@property (nonatomic, assign) BOOL redPointStarRank;

@property (nonatomic, assign) NSInteger popularityCount;

@property (nonatomic, assign) BOOL redPointMyContributton;

@property (nonatomic, strong) NSArray<JieSlms *> *slms;

@property (nonatomic, assign) BOOL redPointUserRank;

@property (nonatomic, assign) NSInteger total;

@end

@interface JieSlms : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, assign) NSInteger genre;

@property (nonatomic, strong) NSArray<JieLastsupporters *> *lastSupporters;

@property (nonatomic, strong) NSArray<JieRefvideos *> *refVideos;

@property (nonatomic, strong) NSArray *refMusics;

@property (nonatomic, copy) NSString *location;

@property (nonatomic, assign) NSInteger sid;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, assign) NSInteger commentCount;

@property (nonatomic, assign) BOOL hasItem;

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, assign) NSInteger ftagId;

@property (nonatomic, strong) NSArray *itemsModel;

@property (nonatomic, strong) JieUser *user;

@property (nonatomic, assign) NSInteger lastSupporterUpCount;

@property (nonatomic, assign) NSInteger best;

@property (nonatomic, assign) NSInteger viewCount;

@property (nonatomic, assign) NSInteger mtype;

@property (nonatomic, assign) NSInteger upCount;

@property (nonatomic, copy) NSString *origin;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, assign) NSInteger top;

@property (nonatomic, copy) NSString *genreName;

@property (nonatomic, assign) NSInteger downCount;

@property (nonatomic, strong) NSArray<NSString *> *tags;

@property (nonatomic, copy) NSString *content;

@property (nonatomic, strong) NSArray<JieVideos *> *videos;

@property (nonatomic, assign) NSInteger read;

@property (nonatomic, assign) long long spDate;

@property (nonatomic, strong) NSArray<Photos *> *photos;

@property (nonatomic, strong) NSArray *objects;

@property (nonatomic, strong) NSArray *musics;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *sdDate;

@property (nonatomic, strong) NSArray *myVoices;

@property (nonatomic, assign) NSInteger supporterCount;

@end

@interface Photos : NSObject

@property (nonatomic, assign) NSInteger parentId;

@property (nonatomic, copy) NSString *domain;

@property (nonatomic, copy) NSString *suffix;

@property (nonatomic, assign) NSInteger mid;

@property (nonatomic, strong) JieMtypeformat *mtypeFormat;

@property (nonatomic, assign) NSInteger collectCount;

@property (nonatomic, assign) NSInteger likeCount;

@property (nonatomic, assign) NSInteger commentCount;

@end


@interface JieUser : NSObject

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

@interface JieVideos : NSObject

@property (nonatomic, strong) JieMediadetail *mediaDetail;

@property (nonatomic, assign) NSInteger times;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger playCount;

@end

@interface JieMediadetail : NSObject

@property (nonatomic, strong) JieMtypeformat *mtypeFormat;

@property (nonatomic, assign) NSInteger mid;

@property (nonatomic, copy) NSString *suffix;

@property (nonatomic, copy) NSString *domain;

@end

@interface JieMtypeformat : NSObject

@property (nonatomic, strong) JiethreeToTwo *threeToTwo;  //300-250

@property (nonatomic, strong) JiethreeToTwo *threeToOne;  //300-150



@end

@interface JiethreeToTwo : NSObject

@property (nonatomic, assign) NSInteger size;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, assign) NSInteger width;

@property (nonatomic, assign) NSInteger height;

@end



@interface JieLastsupporters : NSObject

@property (nonatomic, assign) NSInteger gender;

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, assign) NSInteger score;

@property (nonatomic, copy) NSString *headFace;

@property (nonatomic, copy) NSString *nick;

@property (nonatomic, assign) NSInteger level;

@property (nonatomic, assign) NSInteger rcode;

@property (nonatomic, assign) NSInteger head;

@property (nonatomic, assign) NSInteger vip;

@property (nonatomic, assign) NSInteger vlevel;

@property (nonatomic, copy) NSString *sign;

@end

@interface JieRefvideos : NSObject

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, assign) NSInteger mtype;

@property (nonatomic, copy) NSString *embed;

@end

