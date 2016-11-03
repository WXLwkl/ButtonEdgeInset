//
//  UIButton+EdgeInset.m
//  ButtonEdgeInset
//
//  Created by xingl on 16/7/1.
//  Copyright © 2016年 KL. All rights reserved.
//

#import "UIButton+EdgeInset.h"

@implementation UIButton (EdgeInset)

//重置内边距
- (void)resetEdgeInsets
{
    //设置button内容的偏移方向：居上居左
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
}
//title在上
- (void)titleTopAndImageBottomWithSpace:(CGFloat)space {
    
    [self isTitleOverTheImageOnTop:YES space:space];
}
//title在下
- (void)titleBottomAndImageTopWithSpace:(CGFloat)space {
    
    [self isTitleOverTheImageOnTop:NO space:space];
}
//title在左
- (void)titleLeftAndImageRightWithSpace:(CGFloat)space {
    
    CGRect contentRect = [self contentRectForBounds:self.bounds];
    CGSize titleSize = [self.titleLabel textRectForBounds:contentRect limitedToNumberOfLines:0].size;
    CGSize imageSize = [self imageRectForContentRect:contentRect].size;
    
    [self setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, space)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imageSize.width, 0, imageSize.width)];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, titleSize.width+space, 0, -titleSize.width - space)];
}
//title在右
- (void)titleRightAndImageLeftWithSpace:(CGFloat)space {
    
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, space, 0, -space)];
    [self setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, space)];
}
//判断title是在上还是下
- (void)isTitleOverTheImageOnTop:(BOOL)isTop space:(CGFloat)space {
    
    [self resetEdgeInsets];
    
    CGRect contentRect = [self contentRectForBounds:self.bounds];
//    CGSize titleSize = [self titleRectForContentRect:contentRect].size;
    CGSize titleSize = [self.titleLabel textRectForBounds:contentRect limitedToNumberOfLines:0].size;
    CGSize imageSize = [self imageRectForContentRect:contentRect].size;
    
    CGFloat hei = (contentRect.size.height-titleSize.height-space-imageSize.height)/2.0;
    
    if (isTop) {
        self.titleEdgeInsets = UIEdgeInsetsMake(hei, -imageSize.width+(contentRect.size.width-titleSize.width)/2, 0, 0);
        
        self.imageEdgeInsets = UIEdgeInsetsMake(hei+titleSize.height+space, contentRect.size.width/2-imageSize.width/2, 0, 0);
        
        
    } else {
        
        self.imageEdgeInsets = UIEdgeInsetsMake(hei, contentRect.size.width/2-imageSize.width/2, 0, 0);
        self.titleEdgeInsets = UIEdgeInsetsMake(hei+imageSize.height+space, -imageSize.width+(contentRect.size.width-titleSize.width)/2, 0, 0);
    }
    
}


@end
