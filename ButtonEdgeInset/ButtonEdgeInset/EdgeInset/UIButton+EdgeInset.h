//
//  UIButton+EdgeInset.h
//  ButtonEdgeInset
//
//  Created by xingl on 16/7/1.
//  Copyright © 2016年 KL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (EdgeInset)

/*!
 *  @author 逍遥郎happy, 16-07-01 09:07:38
 *
 *  @brief 标题在上  图片在下
 *
 *  @param space 它们之间的间距
 */
- (void)titleTopAndImageBottomWithSpace:(CGFloat)space;
/*!
 *  @author 逍遥郎happy, 16-07-01 09:07:12
 *
 *  @brief 标题在下 图片在上
 *
 *  @param space 它们之间的间距
 */
- (void)titleBottomAndImageTopWithSpace:(CGFloat)space;
/*!
 *  @author 逍遥郎happy, 16-07-01 09:07:34
 *
 *  @brief 标题在右 图片在左 
 *
 *  @param space 它们之间的间距
 */
- (void)titleRightAndImageLeftWithSpace:(CGFloat)space;

/*!
 *  @author 逍遥郎happy, 16-07-01 09:07:23
 *
 *  @brief 标题在左 图片在右
 *
 *  @param space 它们之间的间距
 */
- (void)titleLeftAndImageRightWithSpace:(CGFloat)space;


@end
