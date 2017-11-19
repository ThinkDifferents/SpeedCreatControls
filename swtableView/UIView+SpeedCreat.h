//
//  UIView+SpeedCreat.h
//  swtableView
//
//  Created by jc on 2017/11/17.
//  Copyright © 2017年 shiwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWLabel : UILabel
/// 初始化
+ (SWLabel *)label;                 /// 初始化设置
- (SWLabel *(^)(void)) config;                      /// frame
- (SWLabel *(^)(CGRect value)) sFrame;              /// 阴影偏移量
- (SWLabel *(^)(CGSize value)) sShadowOffset;       /// 字体
- (SWLabel *(^)(UIFont *value))  sFont;             /// 字号
- (SWLabel *(^)(CGFloat value))  sWordSize;         /// 文字颜色
- (SWLabel *(^)(UIColor *value)) sTextColor;        /// 阴影文字颜色
- (SWLabel *(^)(UIColor *value)) sShadowColor;      /// 背景色
- (SWLabel *(^)(UIColor *value)) sBackgroundColor;  /// 文本
- (SWLabel *(^)(NSString *value)) sText;            /// 行
- (SWLabel *(^)(NSInteger value)) sNumberOfLines;   /// 对齐方式
- (SWLabel *(^)(NSTextAlignment value)) sTextAlignment;     /// 断句方式
- (SWLabel *(^)(NSLineBreakMode value)) sLineBreakMode;

/// 圆角 CGFloat
- (SWLabel *(^)(CGFloat value)) sCornerRadius;          /// 加到父控件
- (SWLabel *(^)(UIView *value)) sAddTo;

@end

@interface SWButton : UIButton
/// 初始化custom按钮
+ (SWButton *)customButton;                         /// 初始化system按钮
+ (SWButton *)systemButton;                         /// 初始化设置
- (SWButton *(^)(void)) config;                     /// frame
- (SWButton *(^)(CGRect value)) sFrame;             /// 字体
- (SWButton *(^)(UIFont *value)) sFont;             /// 字号
- (SWButton *(^)(CGFloat value)) sWordSize;         /// 普通状态文字颜色
- (SWButton *(^)(UIColor *value)) sTextNormalColor; /// 选中状态文字颜色
- (SWButton *(^)(UIColor *value)) sTextSelectedColor;       /// 普通状态image
- (SWButton *(^)(UIImage *value)) sNormalImage;             /// 选中状态image
- (SWButton *(^)(UIImage *value)) sSelectedImage;           /// 普通状态背景image
- (SWButton *(^)(UIImage *value)) sNormalBackgroundImage;   /// 选中状态背景Image
- (SWButton *(^)(UIImage *value)) sSelectedBackgroundImage; /// 普通状态文字
- (SWButton *(^)(NSString *value)) sNormalText;             /// 选中状态文字
- (SWButton *(^)(NSString *value)) sSelectedText;           /// 高亮状态文字
- (SWButton *(^)(NSString *value)) sHighlightText;          /// image偏移量
- (SWButton *(^)(UIEdgeInsets value)) sImageEdgeInsets;     /// title偏移量
- (SWButton *(^)(UIEdgeInsets value)) sTitleEdgeInsets;     /// content偏移量
- (SWButton *(^)(UIEdgeInsets value)) sContentEdgeInsets;   /// 垂直方向布局方式
- (SWButton *(^)(UIControlContentHorizontalAlignment value)) sContentVerticalAlignment;                                 /// 水平方向布局方向
- (SWButton *(^)(UIControlContentVerticalAlignment value)) sContentHorizontalAlignment;                                 /// selector
- (SWButton *(^)(id target, SEL sel, NSInteger controevents))sSelector;

/// 圆角 CGFloat
- (SWButton *(^)(CGFloat value)) sCornerRadius;          /// 加到父控件
- (SWButton *(^)(UIView *value)) sAddTo;

@end

@interface SWTextField : UITextField
/// 初始化
+ (SWTextField *)textField;                     /// 默认设置
- (SWTextField *(^)(void)) config;              /// frame
- (SWTextField *(^)(CGRect value)) sFrame;      /// 字体
- (SWTextField *(^)(UIFont *value)) sFont;      /// 字号
- (SWTextField *(^)(CGFloat value)) sWordSize;  /// 是否以加密形式显示
- (SWTextField *(^)(Boolean value)) sSecureTextEntry;       /// 是否在开始输入时清空文字
- (SWTextField *(^)(Boolean value)) sClearsOnBeginEditing;  /// 文本
- (SWTextField *(^)(NSString *value)) sText;                /// 文本颜色
- (SWTextField *(^)(UIColor *value)) sTextColor;            /// 占位图
- (SWTextField *(^)(NSString *value)) sPlaceHolder;         /// return键类型
- (SWTextField *(^)(UIReturnKeyType value)) sReturnKeyType;         /// 边框样式
- (SWTextField *(^)(UITextBorderStyle value)) sBorderStyle;         /// 左边视图样式
- (SWTextField *(^)(UITextFieldViewMode value)) sLeftViewMode;      /// 删除view显示样式
- (SWTextField *(^)(UITextFieldViewMode value)) sClearButtonMode;

/// 圆角 CGFloat
- (SWTextField *(^)(CGFloat value)) sCornerRadius;          /// 加到父控件
- (SWTextField *(^)(UIView *value)) sAddTo;

@end

@interface UIView (SpeedCreat)
/// 快速创建Label
+ (UILabel *)speedCreatLabelWith:(void(^)(SWLabel *label))attributeBlock;
/// 快速创建Button
+ (UIButton *)speedCreatButtonWith:(void(^)(SWButton *button))attributeBlock;
/// 快速创建TextField
+ (UITextField *)speedCreatTextfieldWith:(void(^)(SWTextField *textField))attributeBlock;

@end
