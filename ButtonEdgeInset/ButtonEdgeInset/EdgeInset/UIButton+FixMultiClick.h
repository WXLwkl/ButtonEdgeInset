//
//  UIButton+FixMultiClick.h
//  ButtonEdgeInset
//
//  Created by xingl on 16/6/30.
//  Copyright © 2016年 KL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (FixMultiClick)

@property (nonatomic, assign)NSTimeInterval cs_acceptEventInterval;//重复点击的时间

@property (nonatomic, assign)NSTimeInterval cs_acceptEventTime;


@end
