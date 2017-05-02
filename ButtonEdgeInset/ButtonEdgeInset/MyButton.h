//
//  MyButton.h
//  Demo
//
//  Created by xingl on 2017/2/27.
//  Copyright © 2017年 兴林. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonClick)(UIButton *sender);

typedef NS_ENUM(NSUInteger, ButtonEdgeInsetsStyle) {
    ButtonEdgeInsetsStyleTop, // image在上，label在下
    ButtonEdgeInsetsStyleLeft, // image在左，label在右
    ButtonEdgeInsetsStyleBottom, // image在下，label在上
    ButtonEdgeInsetsStyleRight // image在右，label在左
};



@interface MyButton : UIButton

@property (nonatomic, copy) ButtonClick btnClick;


+ (instancetype)buttonWithType:(UIButtonType)buttonType title:(NSString *)title image:(UIImage *)image frame:(CGRect)frame ButtonEdgeInsetsStyle:(ButtonEdgeInsetsStyle)edgeInsetsStyle buttonClick:(ButtonClick)buttonClick;

+ (instancetype)buttonWithType:(UIButtonType)buttonType title:(NSString *)title frame:(CGRect)frame buttonClick:(ButtonClick)buttonClick;

@end
