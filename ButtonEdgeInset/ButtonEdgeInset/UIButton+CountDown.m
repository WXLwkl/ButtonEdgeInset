//
//  UIButton+CountDown.m
//  Demo
//
//  Created by xingl on 2017/5/22.
//  Copyright © 2017年 兴林. All rights reserved.
//

#import "UIButton+CountDown.h"

static NSTimer *_countTimer;
static NSTimeInterval _count;
static NSString * _title;

@implementation UIButton (CountDown)

- (void)xl_beginCountDownWithDuration:(NSTimeInterval)duration {
    _title = self.titleLabel.text;
    _count = duration;
    _countTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(xl_updateTitle) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:_countTimer forMode:NSRunLoopCommonModes];
    self.userInteractionEnabled = NO;
    
//    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    
//    self.backgroundColor = [UIColor lightGrayColor];
    self.layer.borderColor = [UIColor clearColor].CGColor;
    self.clipsToBounds = YES;
}

- (void)xl_updateTitle {
    NSString *countString = [NSString stringWithFormat:@"%lis 后失效", (long)_count - 1];
    self.userInteractionEnabled = NO;
    [self setTitle:countString forState:UIControlStateNormal];
    
    if (_count-- <= 1.0) {
        
        [self xl_stopCountDown];
        [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        self.backgroundColor = [UIColor whiteColor];
        self.layer.borderColor = [UIColor redColor].CGColor;
    }
}

- (void)xl_stopCountDown {
    [_countTimer invalidate];
    _countTimer = nil;
//    _count = 60;
    [self setTitle:_title forState:UIControlStateNormal];
    self.userInteractionEnabled = YES;
}

@end
