//
//  HTSendAnimation.m
//  HTSendAnimationDemo
//
//  Created by chenghong on 2017/8/22.
//  Copyright © 2017年 HT. All rights reserved.
//

#import "HTSendAnimation.h"


@interface HTSendAnimation ()

@property (nonatomic, strong) UIImageView *imageView;  // 主体图片
@property (nonatomic, strong) UIImageView *circle1;  // 圆点1
@property (nonatomic, strong) UIImageView *circle2;  // 圆点2
@property (nonatomic, strong) UIImageView *circle3;  // 圆点3

@end

@implementation HTSendAnimation

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // 初始化视图
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 0.5 * SCREEN_WIDTH, 0.4 * SCREEN_WIDTH)];
        [self.imageView setCenter:CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT - self.imageView.frame.size.height)];
        self.imageView.image = [UIImage imageNamed:@"envelope"];
        self.imageView.userInteractionEnabled = YES;
        [self addSubview:self.imageView];
        
        // 设置向上轻扫手势触发事件
        UISwipeGestureRecognizer *swipeGes = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeGes)];
        swipeGes.direction = UISwipeGestureRecognizerDirectionUp;
        [self.imageView addGestureRecognizer:swipeGes];
        
        // 点击移除发送视图
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeSelf)];
        [self addGestureRecognizer:tapGes];
        
        self.circle1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"deepBlue"]];
        self.circle1.center = CGPointMake(self.imageView.center.x, self.imageView.frame.origin.y - 50);
        self.circle1.bounds = CGRectMake(0, 0, 20, 20);
        [self addSubview:self.circle1];
        
        self.circle2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"lightBlue"]];
        self.circle2.center = CGPointMake(self.imageView.center.x, self.circle1.frame.origin.y - 50);
        self.circle2.bounds = CGRectMake(0, 0, 15, 15);
        [self addSubview:self.circle2];
        
        self.circle3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"lightBlue"]];
        self.circle3.center = CGPointMake(self.imageView.center.x, self.circle2.frame.origin.y - 50);
        self.circle3.bounds = CGRectMake(0, 0, 10, 10);
        [self addSubview:self.circle3];
    }
    
    return self;
}

// 向上轻扫事件
- (void)didSwipeGes {
    // 移除圆点
    [self.circle1 removeFromSuperview];
    [self.circle2 removeFromSuperview];
    [self.circle3 removeFromSuperview];
    
    // 旋转并缩小，直至消失
    [UIView animateWithDuration:1.5 animations:^{
        self.imageView.frame = CGRectMake(SCREEN_WIDTH/2, 0, 0, 0);
        self.imageView.transform = CGAffineTransformMakeRotation(179);
        self.imageView.transform = CGAffineTransformMakeRotation(358);
    } completion:^(BOOL finished) {
        [self removeSelf];
    }];
}

// 移除发送视图
- (void)removeSelf {
    [self removeFromSuperview];
}


@end
