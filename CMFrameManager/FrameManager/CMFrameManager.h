//
//  CMFrameManager.h
//  CMFrameManager
//
//  Created by WuChuMing on 2019/12/30.
//  Copyright © 2019 Shawn. All rights reserved.
//

#ifndef CMFrameManager_h
#define CMFrameManager_h

#import "UIView+CMFrame.h"

/**UI界面是 iphone6 的时候，选择 font6Size*/
/**
 *  Frame的屏幕适配 ,根据iphone6的尺寸来的
 *  @return 返回当前的屏幕的rect
 */
static inline CGRect CGRectMake6(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    CGRect rect;
    rect.origin.x =  x * CMFrameAdapterInstance.size6ScaleW;
    rect.origin.y =  y * CMFrameAdapterInstance.size6ScaleH;
    if (width != height) {
        rect.size.width =  width * CMFrameAdapterInstance.size6ScaleW;
        rect.size.height =  height * CMFrameAdapterInstance.size6ScaleH;
    } else {
        CGFloat originalheight =  height * CMFrameAdapterInstance.size6ScaleH;
        CGFloat originalwidth =  width * CMFrameAdapterInstance.size6ScaleW;
        
        if (originalwidth > originalheight) {
            rect.size.width = originalheight;
            rect.size.height = originalheight;
            CGFloat offset = (originalwidth-originalheight)*1.0/2;
            rect.origin.x = rect.origin.x + offset;
        } else {
            rect.size.width = originalheight;
            rect.size.height = originalheight;
            CGFloat offset = (originalheight-originalwidth)*1.0/2;
            rect.origin.y = rect.origin.y + offset;
        }
    }
    return rect;
}

static inline CGFloat CMWidth6(CGFloat w)
{
    return  w*CMFrameAdapterInstance.size6ScaleW;
}

static inline CGFloat CMHeight6(CGFloat h)
{
    return  h*CMFrameAdapterInstance.size6ScaleH;
}


/**
 *  Frame的屏幕适配 ,根据iphoneX的尺寸来的
 *  @return 返回当前的屏幕的rect
 */
static inline CGRect CGRectMakeX(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    CGRect rect;
    rect.origin.x =  x * CMFrameAdapterInstance.sizeXScaleW;
    rect.origin.y =  y * CMFrameAdapterInstance.sizeXScaleH;
    if (width != height) {
        rect.size.width =  width * CMFrameAdapterInstance.sizeXScaleW;
        rect.size.height =  height * CMFrameAdapterInstance.sizeXScaleH;
    } else {
        CGFloat originalheight =  height * CMFrameAdapterInstance.sizeXScaleH;
        CGFloat originalwidth =  width * CMFrameAdapterInstance.sizeXScaleW;
        
        if (originalwidth > originalheight) {
            rect.size.width = originalheight;
            rect.size.height = originalheight;
            CGFloat offset = (originalwidth-originalheight)*1.0/2;
            rect.origin.x = rect.origin.x + offset;
        } else {
            rect.size.width = originalheight;
            rect.size.height = originalheight;
            CGFloat offset = (originalheight-originalwidth)*1.0/2;
            rect.origin.y = rect.origin.y + offset;
        }
    }
    return rect;
}

static inline CGFloat CMWidthX(CGFloat w)
{
    return  w*CMFrameAdapterInstance.sizeXScaleW;
}

static inline CGFloat CMHeightX(CGFloat h)
{
    return  h*CMFrameAdapterInstance.sizeXScaleH;
}


/**UI界面是 iphone6 的时候，选择 font6Size*/
static inline UIFont * font6Size(CGFloat fontSize)
{
    return [UIFont systemFontOfSize:fontSize*CMFrameAdapterInstance.font6Scale];
}
/**UI界面是 iphone6 ，需要加粗的时候选择 fontBold6Size*/
static inline UIFont * fontBold6Size(CGFloat fontSize)
{
    return [UIFont boldSystemFontOfSize:fontSize*CMFrameAdapterInstance.font6Scale];
}
/**UI界面是 iphone6p 的时候，选择 font6pSize*/
static inline UIFont * fontXSize(CGFloat fontSize)
{
    return [UIFont systemFontOfSize:fontSize*CMFrameAdapterInstance.fontXScale];
}
/**UI界面是 iphone6p ，需要加粗的时候选择 fontBold6pSize*/
static inline UIFont * fontBoldXSize(CGFloat fontSize)
{
    return [UIFont boldSystemFontOfSize:fontSize*CMFrameAdapterInstance.fontXScale];
}




#endif /* CMFrameManager_h */
