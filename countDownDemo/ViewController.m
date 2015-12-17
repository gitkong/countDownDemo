//
//  ViewController.m
//  countDownDemo
//
//  Created by 孔凡列 on 15/12/8.
//  Copyright © 2015年 czebd. All rights reserved.
//

#import "ViewController.h"
#import "CZCountDownView.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 封装后
    CZCountDownView *countDown      = [CZCountDownView cz_shareCountDown];
    countDown.frame                 = CGRectMake(100, 100, 200, 30);
    countDown.timestamp             = 86400;
    countDown.backgroundImageName   = @"search_k";
    countDown.timerStopBlock        = ^{
        NSLog(@"时间停止");
    };
    [self.view addSubview:countDown];
    
    CZCountDownView *c1             = [CZCountDownView cz_countDown];
    CZCountDownView *c2             = [CZCountDownView cz_countDown];
    NSLog(@"%p--%p",c1,c2);
}

@end
