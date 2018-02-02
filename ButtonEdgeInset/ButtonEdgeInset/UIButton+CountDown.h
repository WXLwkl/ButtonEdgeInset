//
//  UIButton+CountDown.h
//  Demo
//
//  Created by xingl on 2017/5/22.
//  Copyright © 2017年 兴林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CountDown)

- (void)xl_beginCountDownWithDuration:(NSTimeInterval)duration;
- (void)xl_stopCountDown;

@end
