//
//  CMFrameAdapter.m
//  CMFrameManager
//
//  Created by WuChuMing on 2019/12/28.
//  Copyright © 2019 Shawn. All rights reserved.
//

#import "CMFrameAdapter.h"

@implementation CMSenceContainer
/**创建一个单例*/
+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    static CMSenceContainer * _sharedInstance;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[CMSenceContainer alloc] init];
    });
    return _sharedInstance;
}

@end

@implementation CMFrameAdapter



/**创建一个单例*/
+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    static CMFrameAdapter * _sharedInstance;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[CMFrameAdapter alloc] init];
    });
    return _sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupData];
    }
    return self;
}



- (void)setupData
{
//  获取当前状态栏的高难度
    CGFloat statusHeight = [self getStausBarHeight];
//  导航栏的高度
    CGFloat navHeight = [UINavigationBar appearance].frame.size.height;
//  TabBar的高度
    CGFloat tabBarHeight = [UITabBar appearance].frame.size.height;
//  获取当前屏幕尺寸
    CGFloat screenBoundsWidth = [[UIScreen mainScreen ] bounds].size.width;
    CGFloat screenBoundsHeight = [[UIScreen mainScreen ] bounds].size.height;
//  有效高度
    CGFloat avilableHeight = screenBoundsHeight - tabBarHeight - navHeight - statusHeight;

    /// 375 x 667 的计算比率
    _size6ScaleW = screenBoundsWidth * 1.0/375;
    _size6ScaleH = avilableHeight * 1.0/(667-49-64);


    /// 414 x 896 的计算比率
   _sizeXScaleW =  screenBoundsWidth * 1.0/414;
   _sizeXScaleH = avilableHeight * 1.0/(896-88-83);
    

    _font6Scale = 1;
    _fontXScale = 1;
    if (screenBoundsWidth <= 320 && screenBoundsHeight <= 568) {
        _font6Scale = 0.9;
        _fontXScale = 2/3.0-0.1;
    } else if (screenBoundsWidth < 414.0 && screenBoundsHeight < 736.0 ) {//小于6p的屏幕
        _fontXScale = 3/4.0;
    } else {//大于等于6p的屏幕
        _font6Scale = 5/4.0;
    }
}



- (CGFloat)getStausBarHeight{
    CGFloat statusBarHeight = 0;
       if ([CMSenceContainer shareInstance].sence) {
           id statusBarManager = [[CMSenceContainer shareInstance].sence valueForKey:@"statusBarManager"];
           if (0) {
              NSValue *statusFrame = [statusBarManager valueForKey:@"statusBarFrame"];
               if (statusFrame) {
                   CGRect rect = statusFrame.CGRectValue;
                   statusBarHeight = rect.size.height;
               }
           } else {
               // Fallback on earlier versions
                     if (@available(iOS 13, *)) {
                         if ([UIScreen mainScreen].bounds.size.height >= 896 ) {
                             statusBarHeight = 88;
                         } else {
                             statusBarHeight = 64;
                         }
                     }
           }
       } else {
                statusBarHeight = ([[UIApplication sharedApplication] statusBarFrame].size.height);
          
       }
    
    
    
    
    
    return statusBarHeight;
}




@end
