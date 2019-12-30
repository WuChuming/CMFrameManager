//
//  UIView+CMFrame.m
//  CMFrameManager
//
//  Created by WuChuMing on 2019/12/30.
//  Copyright © 2019 Shawn. All rights reserved.
//

#import "UIView+CMFrame.h"

@implementation UIView (CMFrame)

#pragma mark - 正常情况的大小
- (CGPoint)origin
{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)aPoint
{
    CGRect newframe = self.frame;
    newframe.origin = aPoint;
    self.frame = newframe;
}

// Retrieve and set the size
- (CGSize)size
{
    return self.frame.size;
}

- (void)setSize:(CGSize)aSize
{
    CGRect newframe = self.frame;
    newframe.size = aSize;
    self.frame = newframe;
}

// Query other frame locations
- (CGPoint)bottomRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint)bottomLeft
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint)topRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    return CGPointMake(x, y);
}

// Retrieve and set height, width, top, bottom, left, right
- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)newheight
{
    CGRect newframe = self.frame;
    newframe.size.height = newheight;
    self.frame = newframe;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)newwidth
{
    CGRect newframe = self.frame;
    newframe.size.width = newwidth;
    self.frame = newframe;
}

- (CGFloat)top
{
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)newtop
{
    CGRect newframe = self.frame;
    newframe.origin.y = newtop;
    self.frame = newframe;
}

- (CGFloat)left
{
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)newleft
{
    CGRect newframe = self.frame;
    newframe.origin.x = newleft;
    self.frame = newframe;
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)newbottom
{
    CGRect newframe = self.frame;
    newframe.origin.y = newbottom - self.frame.size.height;
    self.frame = newframe;
}

- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)newright
{
    CGFloat delta = newright - (self.frame.origin.x + self.frame.size.width);
    CGRect newframe = self.frame;
    newframe.origin.x += delta ;
    self.frame = newframe;
}


- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}
- (CGFloat)centerX
{
    return self.center.x;
}
- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}
- (CGFloat)centerY
{
    return self.center.y;
}
- (CGFloat)x
{
    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
- (CGFloat)y
{
    return self.frame.origin.y;
}
- (void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

#pragma mark - iphone6上面的大小

- (CGSize)size6
{
    CGSize size = self.size;
    
    size.width =  size.width/CMFrameAdapterInstance.size6ScaleW;
    size.height =  size.height/CMFrameAdapterInstance.size6ScaleH;
    return size;
}

- (void)setSize6:(CGSize)size6
{
    CGRect newframe = self.frame;
    size6.width =  size6.width*CMFrameAdapterInstance.size6ScaleW;
    size6.height =  size6.height*CMFrameAdapterInstance.size6ScaleH;
    newframe.size = size6;
    self.frame = newframe;
}

- (CGPoint)bottomRight6
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake( x/CMFrameAdapterInstance.size6ScaleW,  y/CMFrameAdapterInstance.size6ScaleH);
}
- (CGPoint)bottomLeft6
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake( x/CMFrameAdapterInstance.size6ScaleW,  y/CMFrameAdapterInstance.size6ScaleH);
}
- (CGPoint)topRight6
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    return CGPointMake( x/CMFrameAdapterInstance.size6ScaleW,  y/CMFrameAdapterInstance.size6ScaleH);
}
- (CGFloat)height6
{
    return  self.frame.size.height/CMFrameAdapterInstance.size6ScaleH;
}

- (void)setHeight6:(CGFloat)height6
{
    CGRect newframe = self.frame;
    newframe.size.height = height6*CMFrameAdapterInstance.size6ScaleH;
    self.frame = newframe;
}

- (CGFloat)width6
{
    return  self.frame.size.width/CMFrameAdapterInstance.size6ScaleW;
}

- (void)setWidth6:(CGFloat)width6
{
    CGRect newframe = self.frame;
    newframe.size.width =  width6*CMFrameAdapterInstance.size6ScaleW;
    self.frame = newframe;
}

- (CGFloat)top6
{
    return  self.frame.origin.y/CMFrameAdapterInstance.size6ScaleH;
}

- (void)setTop6:(CGFloat)top6
{
    CGRect newframe = self.frame;
    newframe.origin.y =  top6*CMFrameAdapterInstance.size6ScaleH;
    self.frame = newframe;
}

- (CGFloat)left6
{
    return  self.frame.origin.x/CMFrameAdapterInstance.size6ScaleW;
}

- (void)setLeft6:(CGFloat)left6
{
    CGRect newframe = self.frame;
    newframe.origin.x =  left6*CMFrameAdapterInstance.size6ScaleW;
    self.frame = newframe;
}

- (CGFloat)bottom6
{
    return  (self.frame.origin.y + self.frame.size.height)/CMFrameAdapterInstance.size6ScaleH;
}

- (void)setBottom6:(CGFloat)bottom6
{
    CGRect newframe = self.frame;
    newframe.origin.y =  bottom6*CMFrameAdapterInstance.size6ScaleH - self.frame.size.height;
    self.frame = newframe;
}

- (CGFloat)right6
{
    return  (self.frame.origin.x + self.frame.size.width)/CMFrameAdapterInstance.size6ScaleW;
}

- (void)setRight6:(CGFloat)right6
{
    CGFloat delta =  right6*CMFrameAdapterInstance.size6ScaleW - (self.frame.origin.x + self.frame.size.width);
    CGRect newframe = self.frame;
    newframe.origin.x += delta ;
    self.frame = newframe;
}


- (CGFloat)centerX6
{
    return  self.center.x/CMFrameAdapterInstance.size6ScaleW;
}

- (void)setCenterX6:(CGFloat)centerX6
{
    CGPoint center = self.center;
    center.x =  centerX6*CMFrameAdapterInstance.size6ScaleW;
    self.center = center;
}

- (CGFloat)centerY6
{
    return  self.center.y/CMFrameAdapterInstance.size6ScaleH;
}

- (void)setCenterY6:(CGFloat)centerY6
{
    CGPoint center = self.center;
    center.y =  centerY6*CMFrameAdapterInstance.size6ScaleH;
    self.center = center;
}

- (CGFloat)x6
{
    return  self.frame.origin.x/CMFrameAdapterInstance.size6ScaleW;
}

- (void)setX6:(CGFloat)x6
{
    CGRect newframe = self.frame;
    newframe.origin.x =  x6*CMFrameAdapterInstance.size6ScaleW;
    self.frame = newframe;
}

- (CGFloat)y6
{
    return  self.frame.origin.y/CMFrameAdapterInstance.size6ScaleH;
}

- (void)setY6:(CGFloat)y6
{
    CGRect newframe = self.frame;
    newframe.origin.y =  y6*CMFrameAdapterInstance.size6ScaleH;
    self.frame = newframe;
}

#pragma mark - iphoneX上面的大小

- (CGSize)sizeX
{
    CGSize size = self.size;
    size.width =  size.width/CMFrameAdapterInstance.sizeXScaleW;
    size.height =  size.height/CMFrameAdapterInstance.sizeXScaleH;
    return size;
}


- (void)setSizeX:(CGSize)sizeX
{
    CGRect newframe = self.frame;
    sizeX.width =  sizeX.width*CMFrameAdapterInstance.sizeXScaleW;
    sizeX.height =  sizeX.height*CMFrameAdapterInstance.sizeXScaleH;
    newframe.size = sizeX;
    self.frame = newframe;
}

// Query other frame locations
- (CGPoint)bottomRightX
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake( x/CMFrameAdapterInstance.sizeXScaleW,  y/CMFrameAdapterInstance.sizeXScaleH);
}
- (CGPoint)bottomLeftX
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake( x/CMFrameAdapterInstance.sizeXScaleW,  y/CMFrameAdapterInstance.sizeXScaleH);
}
- (CGPoint)topRightX
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    return CGPointMake( x/CMFrameAdapterInstance.sizeXScaleW,  y/CMFrameAdapterInstance.sizeXScaleH);
}

- (CGFloat)heightX
{
    return  self.frame.size.height/CMFrameAdapterInstance.sizeXScaleH;
}

- (void)setHeightX:(CGFloat)heightX
{
    CGRect newframe = self.frame;
    newframe.size.height =  heightX*CMFrameAdapterInstance.size6ScaleH;
    self.frame = newframe;
}

- (CGFloat)widthX
{
    return  self.frame.size.width/CMFrameAdapterInstance.sizeXScaleW;
}
- (void)setWidthX:(CGFloat)widthX
{
    CGRect newframe = self.frame;
    newframe.size.width =  widthX*CMFrameAdapterInstance.sizeXScaleW;
    self.frame = newframe;
}
- (CGFloat)topX
{
    return  self.frame.origin.y/CMFrameAdapterInstance.sizeXScaleH;
}
- (void)setTopX:(CGFloat)topX
{
    CGRect newframe = self.frame;
    newframe.origin.y =  topX*CMFrameAdapterInstance.sizeXScaleH;
    self.frame = newframe;
}

- (CGFloat)leftX
{
    return  self.frame.origin.x/CMFrameAdapterInstance.sizeXScaleW;
}
- (void)setLeftX:(CGFloat)leftX
{
    CGRect newframe = self.frame;
    newframe.origin.x =  leftX*CMFrameAdapterInstance.size6ScaleW;
    self.frame = newframe;
}

- (CGFloat)bottomX
{
    return  (self.frame.origin.y + self.frame.size.height)/CMFrameAdapterInstance.sizeXScaleH;
}

- (void)setBottomX:(CGFloat)bottomX
{
    CGRect newframe = self.frame;
    newframe.origin.y =  bottomX*CMFrameAdapterInstance.size6ScaleH - self.frame.size.height;
    self.frame = newframe;
}

- (CGFloat)rightX
{
    return  (self.frame.origin.x + self.frame.size.width)/CMFrameAdapterInstance.sizeXScaleW;
}

- (void)setRightX:(CGFloat)rightX
{
    CGFloat delta =  rightX*CMFrameAdapterInstance.size6ScaleW - (self.frame.origin.x + self.frame.size.width);
    CGRect newframe = self.frame;
    newframe.origin.x += delta ;
    self.frame = newframe;
}

- (CGFloat)centerXX
{
    return  self.center.x/CMFrameAdapterInstance.sizeXScaleW;
}

- (void)setCenterXX:(CGFloat)centerXX
{
    CGPoint center = self.center;
    center.x =  centerXX*CMFrameAdapterInstance.size6ScaleW;
    self.center = center;
}

- (CGFloat)centerYX
{
    return  self.center.y/CMFrameAdapterInstance.sizeXScaleH;
}

- (void)setCenterYX:(CGFloat)centerYX
{
    CGPoint center = self.center;
    center.x =  centerYX*CMFrameAdapterInstance.sizeXScaleH;
    self.center = center;
}

- (CGFloat)xX
{
    return  self.frame.origin.x/CMFrameAdapterInstance.sizeXScaleW;
}
- (void)setXX:(CGFloat)xX
{
    CGRect newframe = self.frame;
    newframe.origin.x =  xX*CMFrameAdapterInstance.size6ScaleW;
    self.frame = newframe;
}

- (CGFloat)yX
{
    return  self.frame.origin.y/CMFrameAdapterInstance.sizeXScaleH;
}

- (void)setYX:(CGFloat)yX
{
    CGRect newframe = self.frame;
    newframe.origin.y =  yX*CMFrameAdapterInstance.sizeXScaleH;
    self.frame = newframe;
}

@end
