//
//  ViewController.m
//  countDownDemo
//
//  Created by 孔凡列 on 15/12/8.
//  Copyright © 2015年 czebd. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "FLCountDownView.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"点击屏幕跳转";
    
    // 封装后
    FLCountDownView *countDown      = [FLCountDownView fl_countDown];
    countDown.frame                 = CGRectMake(100, 100, 200, 30);
    countDown.timestamp             = 86400;
    countDown.backgroundImageName   = @"search_k";
    countDown.timerStopBlock        = ^{
        NSLog(@"时间停止");
    };
    [self.view addSubview:countDown];
    
    FLCountDownView *c1             = [FLCountDownView fl_countDown];
    FLCountDownView *c2             = [FLCountDownView fl_countDown];
    NSLog(@"%p--%p",c1,c2);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:YES];
}

@end
