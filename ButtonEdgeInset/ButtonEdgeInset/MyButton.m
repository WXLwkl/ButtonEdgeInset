//
//  MyButton.m
//  Demo
//
//  Created by xingl on 2017/2/27.
//  Copyright © 2017年 兴林. All rights reserved.
//

#import "MyButton.h"
#import "UIButton+EdgeInset.h"
#import "UIButton+FixMultiClick.h"
@implementation MyButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)buttonWithType:(UIButtonType)buttonType title:(NSString *)title frame:(CGRect)frame buttonClick:(ButtonClick)buttonClick {
    MyButton *btn = [MyButton buttonWithType:buttonType title:title image:nil frame:frame ButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleTop buttonClick:buttonClick];
    return btn;
}

+ (instancetype)buttonWithType:(UIButtonType)buttonType title:(NSString *)title image:(UIImage *)image frame:(CGRect)frame ButtonEdgeInsetsStyle:(ButtonEdgeInsetsStyle)edgeInsetsStyle buttonClick:(ButtonClick)buttonClick {
    
    MyButton *btn = [super buttonWithType:buttonType];
    
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    btn.cs_acceptEventInterval = 1;
    btn.btnClick = buttonClick;
    [btn addTarget:btn action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    if (image) {
        
        [btn setImage:image forState:UIControlStateNormal];
        switch (edgeInsetsStyle) {
            case ButtonEdgeInsetsStyleTop:
                [btn titleBottomAndImageTopWithSpace:5];
                break;
            case ButtonEdgeInsetsStyleBottom:
                [btn titleTopAndImageBottomWithSpace:5];
                break;
            case ButtonEdgeInsetsStyleLeft:
                [btn titleRightAndImageLeftWithSpace:5];
                break;
            case ButtonEdgeInsetsStyleRight:
                [btn titleLeftAndImageRightWithSpace:5];
                break;
            default:
                break;
        }
    }

    [btn setBackgroundColor:[UIColor blueColor]];
    
    
    return btn;
}

- (void)buttonClick:(UIButton *)sender {
    if (self.btnClick) {
        self.btnClick(sender);
    }
}

@end
