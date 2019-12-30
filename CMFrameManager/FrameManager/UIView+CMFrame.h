//
//  UIView+CMFrame.h
//  CMFrameManager
//
//  Created by WuChuMing on 2019/12/30.
//  Copyright © 2019 Shawn. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "CMFrameAdapter.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CMFrame)

#pragma mark - 正常情况的大小
@property (nonatomic,assign) CGPoint origin;
@property (nonatomic,assign) CGSize size;
@property (nonatomic,readonly) CGPoint bottomLeft;
@property (nonatomic,readonly) CGPoint bottomRight;
@property (nonatomic,readonly) CGPoint topRight;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat top;
@property (nonatomic,assign) CGFloat left;
@property (nonatomic,assign) CGFloat bottom;
@property (nonatomic,assign) CGFloat right;
@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;

#pragma mark - iphone6上面的大小
@property (nonatomic,assign) CGSize size6;
@property (nonatomic,readonly) CGPoint bottomLeft6;
@property (nonatomic,readonly) CGPoint bottomRight6;
@property (nonatomic,readonly) CGPoint topRight6;
@property (nonatomic,assign) CGFloat height6;
@property (nonatomic,assign) CGFloat width6;
@property (nonatomic,assign) CGFloat top6;
@property (nonatomic,assign) CGFloat left6;
@property (nonatomic,assign) CGFloat bottom6;
@property (nonatomic,assign) CGFloat right6;
@property (nonatomic,assign) CGFloat x6;
@property (nonatomic,assign) CGFloat y6;
@property (nonatomic,assign) CGFloat centerX6;
@property (nonatomic,assign) CGFloat centerY6;

#pragma mark - iphoneX上面的大小
@property (nonatomic,assign) CGSize sizeX;
@property (nonatomic,readonly) CGPoint bottomLeftX;
@property (nonatomic,readonly) CGPoint bottomRightX;
@property (nonatomic,readonly) CGPoint topRightX;
@property (nonatomic,assign) CGFloat heightX;
@property (nonatomic,assign) CGFloat widthX;
@property (nonatomic,assign) CGFloat topX;
@property (nonatomic,assign) CGFloat leftX;
@property (nonatomic,assign) CGFloat bottomX;
@property (nonatomic,assign) CGFloat rightX;
@property (nonatomic,assign) CGFloat xX;
@property (nonatomic,assign) CGFloat yX;
@property (nonatomic,assign) CGFloat centerXX;
@property (nonatomic,assign) CGFloat centerYX;


@end

NS_ASSUME_NONNULL_END
