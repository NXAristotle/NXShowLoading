//
//  NXPopAlertViewLabel.m
//  2.6-NXPopAlert
//
//  Created by linyibin on 15/2/6.
//  Copyright (c) 2015年 NXAristotle. All rights reserved.
//

#import "NXPopAlertViewLabel.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
//  快速生成颜色
#define NXCustomColor(r , g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0  blue:(b)/255.0  alpha:(a)/1.0 ]

#define kShowAnimationDuration  1.0   // 动画显示执行的时间
#define kFadeAnimationDuration  0.3   // 动画消失执行的时间

@implementation NXPopAlertViewLabel


+ (void)showPopAlertViewWithMessage:(NSString *)message withLabelViewAlpha:(CGFloat)alpha setInsertWidth:(int)insertWidth insertHeiht:(int)insertHeight andFrameCenterYoffset:(CGFloat)offset{
    
    NXPopAlertViewLabel *tempLabel = [[NXPopAlertViewLabel alloc] init];
    
    [tempLabel showPopAlertViewWithMessage:message withLabelViewAlpha:alpha setInsertWidth:insertWidth insertHeiht:insertHeight andFrameCenterYoffset:offset];
}

- (void)showPopAlertViewWithMessage:(NSString *)message withLabelViewAlpha:(CGFloat)alpha setInsertWidth:(int)insertWidth insertHeiht:(int)insertHeight andFrameCenterYoffset:(CGFloat)offset{

    
    UIWindow *mainWindow = [UIApplication sharedApplication].keyWindow;
    
    /*
    UIButton *backgroundView = [[UIButton alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [mainWindow addSubview:backgroundView];
    
    backgroundView.userInteractionEnabled = NO;
    */
    
    self.text = message;
    self.numberOfLines = 0;
    self.textAlignment = NSTextAlignmentCenter;
    self.backgroundColor = NXCustomColor(0, 0, 0, 1.0);
    self.textColor = [UIColor whiteColor];
    self.alpha = 0;
    self.layer.cornerRadius = 8;
    self.layer.masksToBounds = YES;
    //  设置宽高限制
    CGSize sizesize = CGSizeMake(kScreenWidth - 2 * 50, MAXFLOAT);
    //  用文字计算出Size
    CGSize sizeTop = [self stringWithSizeLine:self.text font:self.font size:sizesize];
    //  设置frame
    self.frame = CGRectMake(0, 0, sizeTop.width + insertWidth, sizeTop.height + insertHeight);
    //    self.showLabel = showLabel;
    self.center = CGPointMake(kScreenWidth *0.5, kScreenHeight * offset);
    
    //  动画
    [UIView animateWithDuration:kShowAnimationDuration animations:^{
        self.alpha = alpha;
        [mainWindow addSubview:self];
    } completion:^(BOOL finished) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(kFadeAnimationDuration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [UIView animateWithDuration:1.0 animations:^{
                self.alpha = 0;
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
        });
        
    }];
}

-(CGSize )stringWithSizeLine:(NSString *)str font:(UIFont *)font size:(CGSize)size
{
    NSMutableDictionary * Att= [NSMutableDictionary dictionary];
    Att[NSFontAttributeName] = font;
    return  [str boundingRectWithSize:size
                              options:NSStringDrawingUsesLineFragmentOrigin
                           attributes:Att context:nil].size;
}

@end
