//
//  NXPopAlertViewLabel.h
//  2.6-NXPopAlert
//
//  Created by linyibin on 15/2/6.
//  Copyright (c) 2015年 NXAristotle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NXPopAlertViewLabel : UILabel

/**
 *  显示提示Label
 *
 *  @param message      要显示的提示文字内容
 *  @param alpha        透明度
 *  @param insertWidth  label的插入内边距宽度
 *  @param insertHeight label的插入内边距高度
 *  @param offset       label显示在屏幕上的centerY的上下偏移百分比（0.0 ~ 1.0）
 */
+ (void)showPopAlertViewWithMessage:(NSString *)message withLabelViewAlpha:(CGFloat)alpha setInsertWidth:(int)insertWidth insertHeiht:(int)insertHeight andFrameCenterYoffset:(CGFloat)offset;
/**
 *  显示提示Label
 *
 *  @param message      要显示的提示文字内容
 *  @param alpha        透明度
 *  @param insertWidth  label的插入内边距宽度
 *  @param insertHeight label的插入内边距高度
 *  @param offset       label显示在屏幕上的centerY的上下偏移百分比（0.0 ~ 1.0）
 */
- (void)showPopAlertViewWithMessage:(NSString *)message withLabelViewAlpha:(CGFloat)alpha setInsertWidth:(int)insertWidth insertHeiht:(int)insertHeight andFrameCenterYoffset:(CGFloat)offset;

@end
