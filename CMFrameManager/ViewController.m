//
//  ViewController.m
//  CMFrameManager
//
//  Created by WuChuMing on 2019/12/28.
//  Copyright © 2019 Shawn. All rights reserved.
//

#import "ViewController.h"
#import "CMFrameManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor whiteColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake6(100, 100, 100, 100)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMakeX(100, 400, 100, 100)];
    view2.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view2];
    
    // Do any additional setup after loading the view.
}


@end
