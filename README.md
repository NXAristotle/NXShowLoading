# NXShowLoading 介绍
简单的文本弹框提示
现在可以定制的有弹框的背景透明度，文本距离左右的内边距，弹框的再屏幕的中心位置的偏移量（比例）。
# 如何使用
```
+ (void)showPopAlertViewWithMessage:(NSString *)message withLabelViewAlpha:(CGFloat)alpha setInsertWidth:(int)insertWidth insertHeiht:(int)insertHeight andFrameCenterYoffset:(CGFloat)offset{ }
```
> message:文本的内容   alpha：文本框的透明度   insertWidth：label的插入内边距宽度    insertHeight：label的插入内边距高度    offset：label显示在屏幕上的centerY的上下偏移百分比（0.0 ~ 1.0）

### 具体的例子
``` 
  [NXPopAlertViewLabel showPopAlertViewWithMessage:@"显示要提示文本内容，太长的话会自动换行哦！" withLabelViewAlpha:0.7 setInsertWidth:15 insertHeiht:15 andFrameCenterYoffset:0.3];
```
