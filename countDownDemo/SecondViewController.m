//
//  SecondViewController.m
//  countDownDemo
//
//  Created by clarence on 16/11/7.
//  Copyright © 2016年 czebd. All rights reserved.
//

#import "SecondViewController.h"
#import "FLCountDownView.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // 封装后
    FLCountDownView *countDown      = [FLCountDownView fl_countDown];
    countDown.frame                 = CGRectMake(100, 100, 200, 30);
    countDown.timestamp             = 86400;
    countDown.backgroundImageName   = @"search_k";
    countDown.timerStopBlock        = ^{
        NSLog(@"时间停止");
    };
    [self.view addSubview:countDown];
    
    FLCountDownView *countDown2      = [FLCountDownView fl_countDown];
    countDown2.frame                 = CGRectMake(100, 200, 200, 30);
    countDown2.timestamp             = 86400;
    countDown2.backgroundImageName   = @"search_k";
    countDown2.timerStopBlock        = ^{
        NSLog(@"时间停止");
    };
    [self.view addSubview:countDown2];
    
    FLCountDownView *countDown1      = [FLCountDownView fl_countDown];
    countDown1.frame                 = CGRectMake(100, 300, 200, 30);
    countDown1.timestamp             = 86400;
    countDown1.backgroundImageName   = @"search_k";
    countDown1.timerStopBlock        = ^{
        NSLog(@"时间停止");
    };
    [self.view addSubview:countDown1];
    
    FLCountDownView *c1             = [FLCountDownView fl_countDown];
    FLCountDownView *c2             = [FLCountDownView fl_countDown];
    NSLog(@"%p--%p",c1,c2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
