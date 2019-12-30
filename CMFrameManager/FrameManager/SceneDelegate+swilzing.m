//
//  SceneDelegate+swilzing.m
//  CMFrameManager
//
//  Created by WuChuMing on 2019/12/30.
//  Copyright © 2019 Shawn. All rights reserved.
//

#import "SceneDelegate+swilzing.h"
#import <objc/runtime.h>
#import "CMFrameAdapter.h"


@implementation SceneDelegate (swilzing)
+ (void)load {
    //获取系统类库的方法viewDidLoad
    Method originalMethod = class_getInstanceMethod([self class], @selector(scene:willConnectToSession:options:));
    //定义交换的方法
    Method SwizzlingMethod = class_getInstanceMethod([self class], @selector(Mscene:willConnectToSession:options:));
    //交换
    method_exchangeImplementations(originalMethod, SwizzlingMethod);
}

- (void)Mscene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
//  将windowSence赋值给单例
    [CMSenceContainer shareInstance].sence = (UIWindowScene *)scene;
//    执行Sence原来的代码
    [self Mscene:scene willConnectToSession:session options:connectionOptions];
}



@end
