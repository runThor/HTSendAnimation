//
//  ViewController.m
//  HTSendAnimationDemo
//
//  Created by chenghong on 2017/8/22.
//  Copyright © 2017年 HT. All rights reserved.
//

#import "ViewController.h"
#import "HTSendAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HTSendAnimation *sendView = [[HTSendAnimation alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    sendView.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:sendView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
