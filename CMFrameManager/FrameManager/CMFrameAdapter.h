//
//  CMFrameAdapter.h
//  CMFrameManager
//
//  Created by WuChuMing on 2019/12/28.
//  Copyright © 2019 Shawn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMSenceContainer : NSObject

/**创建一个单例*/
+ (instancetype)shareInstance;

@property (nonatomic, strong) UIWindowScene *sence;

@end

#define CMFrameAdapterInstance ((CMFrameAdapter *)[CMFrameAdapter shareInstance])


@interface CMFrameAdapter : NSObject

/**创建一个单例*/
+ (instancetype)shareInstance;

/// 375 x 667 的计算比率
@property (assign, nonatomic) CGFloat size6ScaleW;
@property (assign, nonatomic) CGFloat size6ScaleH;
@property (assign, nonatomic) CGFloat font6Scale;


/// 414 x 896 的计算比率
@property (assign, nonatomic) CGFloat sizeXScaleW;
@property (assign, nonatomic) CGFloat sizeXScaleH;
@property (assign, nonatomic) CGFloat fontXScale;

@end

NS_ASSUME_NONNULL_END
