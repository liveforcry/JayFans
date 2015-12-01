//
//  inforMationModel.h
//  BaseProject
//
//  Created by apple-jd30 on 15/11/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class InfroClip,InfroArticles,InfroStat,InfroSource,InfroImages,InfroComments;
@interface inforMationModel : BaseModel

@property (nonatomic, strong) InfroClip *clip;

@property (nonatomic, assign) long long next;

@property (nonatomic, strong) NSArray<InfroArticles *> *articles;

@property (nonatomic, strong) NSArray *headlines;

@end
@interface InfroClip : NSObject

@property (nonatomic, assign) NSInteger clipId;

@property (nonatomic, copy) NSString *imgDim;

@property (nonatomic, assign) NSInteger following;

@property (nonatomic, assign) long long updateTime;

@property (nonatomic, copy) NSString *memo;

@property (nonatomic, copy) NSString *imgRatio;

@property (nonatomic, copy) NSString *image;

@property (nonatomic, assign) BOOL star;

@property (nonatomic, assign) NSInteger viewType;

@property (nonatomic, assign) long long createTime;

@property (nonatomic, copy) NSString *name;

@end

@interface InfroArticles : NSObject

@property (nonatomic, copy) NSString *creator;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *users;

@property (nonatomic, assign) NSInteger cat;

@property (nonatomic, strong) NSArray<NSString *> *imageIds;

@property (nonatomic, assign) NSInteger likeAble;

@property (nonatomic, strong) NSArray<InfroComments *> *comments;

@property (nonatomic, assign) long long itemId;

@property (nonatomic, copy) NSString *imgRatio;

@property (nonatomic, assign) NSInteger pin;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *ad;

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, copy) NSString *imageId;

@property (nonatomic, copy) NSString *shareText;

@property (nonatomic, assign) NSInteger topicId;

@property (nonatomic, assign) NSInteger updateTime;

@property (nonatomic, assign) NSInteger commented;

@property (nonatomic, strong) InfroSource *source;

@property (nonatomic, assign) NSInteger like;

@property (nonatomic, assign) NSInteger share;

@property (nonatomic, copy) NSString *noteUser;

@property (nonatomic, copy) NSString *imgDim;

@property (nonatomic, assign) NSInteger articleTime;

@property (nonatomic, assign) NSInteger showType;

@property (nonatomic, copy) NSString *sellItem;

@property (nonatomic, strong) NSArray<InfroImages *> *images;

@property (nonatomic, strong) NSArray<NSString *> *media;

@property (nonatomic, copy) NSString *cuttURL;

@property (nonatomic, assign) NSInteger clipped;

@property (nonatomic, assign) NSInteger cmtAble;

@property (nonatomic, assign) NSInteger entity;

@property (nonatomic, copy) NSString *content;

@property (nonatomic, copy) NSString *abs;

@property (nonatomic, assign) NSInteger clipId;

@property (nonatomic, assign) NSInteger read;

@property (nonatomic, assign) NSInteger direct;

@property (nonatomic, copy) NSString *videos;

@property (nonatomic, copy) NSString *related;

@property (nonatomic, assign) NSInteger sourcesCount;

@property (nonatomic, assign) NSInteger href;

@property (nonatomic, strong) NSArray *tags;

@property (nonatomic, copy) NSString *orgUrl;

@property (nonatomic, strong) NSArray *topicIds;

@property (nonatomic, copy) NSString *topic;

@property (nonatomic, assign) NSInteger action;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSInteger closed;

@property (nonatomic, copy) NSString *note;

@property (nonatomic, strong) InfroStat *stat;

@property (nonatomic, assign) NSInteger timestamp;

@end

@interface InfroStat : NSObject

@property (nonatomic, assign) NSInteger shares;

@property (nonatomic, assign) NSInteger likes;

@property (nonatomic, assign) NSInteger clips;

@property (nonatomic, assign) NSInteger views;

@property (nonatomic, assign) NSInteger comments;

@property (nonatomic, copy) NSString *articleId;

@end

@interface InfroSource : NSObject

@property (nonatomic, copy) NSString *imageId;

@property (nonatomic, assign) NSInteger filter;

@property (nonatomic, assign) BOOL star;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *desc;

@end

@interface InfroImages : NSObject

@property (nonatomic, assign) NSInteger height;

@property (nonatomic, assign) NSInteger width;

@property (nonatomic, assign) NSInteger size;

@property (nonatomic, strong) NSArray *links;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, copy) NSString *imageId;

@end

@interface InfroComments : NSObject

@property (nonatomic, assign) long long userId;

@property (nonatomic, assign) NSInteger pin;

@property (nonatomic, assign) NSInteger source;

@property (nonatomic, assign) NSInteger liked;

@property (nonatomic, assign) NSInteger likes;

@property (nonatomic, copy) NSString *image;

@property (nonatomic, copy) NSString *articleTitle;

@property (nonatomic, assign) NSInteger block;

@property (nonatomic, copy) NSString *images;

@property (nonatomic, assign) NSInteger hot;

@property (nonatomic, copy) NSString *tag;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger userLevel;

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, assign) NSInteger blocked;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, assign) NSInteger seconds;

@property (nonatomic, assign) long long articleId;

@property (nonatomic, copy) NSString *message;

@property (nonatomic, copy) NSString *text;

@property (nonatomic, copy) NSString *quote;

@property (nonatomic, assign) NSInteger provider;

@property (nonatomic, assign) NSInteger createTime;

@property (nonatomic, assign) NSInteger floor;

@end

