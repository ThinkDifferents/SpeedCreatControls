//
//  UIView+SpeedCreat.m
//  swtableView
//
//  Created by jc on 2017/11/17.
//  Copyright © 2017年 shiwei. All rights reserved.
//

#import "UIView+SpeedCreat.h"

@implementation SWLabel

+ (SWLabel *)label {
    return [[SWLabel alloc] init];
}

- (SWLabel*(^)(void)) config {
    return ^ () {
        self.text = @"label";
        [self sizeToFit];
        self.font = [UIFont systemFontOfSize:14];
        self.textColor = [UIColor blackColor];
        self.textAlignment = NSTextAlignmentLeft;
        self.numberOfLines = 1;
        self.backgroundColor = [UIColor clearColor];
        self.lineBreakMode = NSLineBreakByWordWrapping;
        self.shadowColor = [UIColor clearColor];
        self.shadowOffset = CGSizeMake(0, 0);
        return self;
    };
}

 /// frame
- (SWLabel*(^)(CGRect value)) sFrame {
    return ^ (CGRect value) {
        self.frame = value;
        return self;
    };
}

/// 文字
- (SWLabel*(^)(NSString *value)) sText {
    return ^ (NSString *value) {
        self.text = value;
        return self;
    };
}

/// 字体
- (SWLabel*(^)(UIFont *value))  sFont {
    return ^ (UIFont *value) {
        self.font = value;
        return self;
    };
}

/// 文本颜色
- (SWLabel*(^)(UIColor *value)) sTextColor {
    return ^ (UIColor *value) {
        self.textColor = value;
        return self;
    };
}

/// 对齐方式
- (SWLabel*(^)(NSInteger value)) sTextAlignment {
    return ^ (NSInteger value) {
        self.textAlignment = value;
        return self;
    };
}

/// 行数
- (SWLabel*(^)(NSInteger value)) sNumberOfLines {
    return ^ (NSInteger value) {
        self.numberOfLines = value;
        return self;
    };
}

/// 背景色
- (SWLabel*(^)(UIColor *value)) sBackgroundColor {
    return ^ (UIColor *value) {
        self.backgroundColor = value;
        return self;
    };
}

///  换行方式
- (SWLabel*(^)(NSInteger value)) sLineBreakMode {
    return ^ (NSInteger value) {
        self.lineBreakMode = value;
        return self;
    };
}

/// 阴影颜色
- (SWLabel*(^)(UIColor *value)) sShadowColor {
    return ^ (UIColor *value) {
        self.shadowColor = value;
        return self;
    };
}

/// 便宜尺寸
- (SWLabel*(^)(CGSize value)) sShadowOffset {
    return ^ (CGSize value) {
        self.shadowOffset = value;
        return self;
    };
}


@end

@implementation SWButton

+ (SWButton *)systemButton {
    return [SWButton buttonWithType:UIButtonTypeCustom];
}

+ (SWButton *)customButton {
    return [SWButton buttonWithType:UIButtonTypeSystem];
}

- (SWButton*(^)(void))config {
    return ^() {
        [self setTitle:@"button" forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        return self;
    };
}

/// frame
- (SWButton*(^)(CGRect value)) sFrame {
    return ^ (CGRect value) {
        self.frame = value;
        return self;
    };
}

/// 字体
- (SWButton*(^)(UIFont *value)) sFont {
    return ^ (UIFont *value) {
        self.titleLabel.font = value;
        return self;
    };
}

/// normal 文字
- (SWButton*(^)(NSString *value)) sNormalText {
    return ^ (NSString *value) {
        [self setTitle:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 文字
- (SWButton*(^)(NSString *value)) sSelectedText {
    return ^ (NSString *value) {
        [self setTitle:value forState:UIControlStateSelected];
        return self;
    };
}

/// highlight 文字
- (SWButton*(^)(NSString *value)) sHighlightText {
    return ^ (NSString *value) {
        [self setTitle:value forState:UIControlStateHighlighted];
        return self;
    };
}

/// normal 文字颜色
- (SWButton*(^)(UIColor *value)) sTextNormalColor {
    return ^ (UIColor *value) {
        [self setTitleColor:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 文字颜色
- (SWButton*(^)(UIColor *value)) sTextSelectedColor {
    return ^ (UIColor *value) {
        [self setTitleColor:value forState:UIControlStateSelected];
        return self;
    };
}

/// normal 图片
- (SWButton*(^)(UIImage *value)) sNormalImage {
    return ^ (UIImage *value) {
        [self setImage:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 图片
- (SWButton*(^)(UIImage *value)) sSelectedImage {
    return ^ (UIImage *value) {
        [self setImage:value forState:UIControlStateSelected];
        return self;
    };
}

/// normal 背景图片
- (SWButton*(^)(UIImage *value)) sNormalBackgroundImage {
    return ^ (UIImage *value) {
        [self setBackgroundImage:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 背景图片
- (SWButton*(^)(UIImage *value)) sSelectedBackgroundImage {
    return ^ (UIImage *value) {
        [self setBackgroundImage:value forState:UIControlStateSelected];
        return self;
    };
}

/// 垂直布局
- (SWButton*(^)(NSInteger value)) sContentVerticalAlignment {
    return ^ (NSInteger value) {
        self.contentHorizontalAlignment = value;
        return self;
    };
}

/// 水平布局
- (SWButton*(^)(NSInteger value)) sContentHorizontalAlignment {
    return ^ (NSInteger value) {
        self.contentVerticalAlignment = value;
        return self;
    };
}

/// image 偏移量
- (SWButton*(^)(UIEdgeInsets value)) sImageEdgeInsets {
    return ^ (UIEdgeInsets value) {
        self.imageEdgeInsets = value;
        return self;
    };
}

/// title 偏移量
- (SWButton*(^)(UIEdgeInsets value)) sTitleEdgeInsets {
    return ^ (UIEdgeInsets value) {
        self.titleEdgeInsets = value;
        return self;
    };
}

/// 内容 偏移量
- (SWButton*(^)(UIEdgeInsets value)) sContentEdgeInsets {
    return ^ (UIEdgeInsets value) {
        self.contentEdgeInsets = value;
        return self;
    };
}

/// 点击事件
- (SWButton *(^)(id target, SEL sel, NSInteger controevents))sSelector {
    return ^ (id target, SEL sel, NSInteger controevents) {
        [self addTarget:target action:sel forControlEvents:controevents];
        return self;
    };
}

@end

@implementation SWTextField

+ (SWTextField *)textField {
    return [[SWTextField alloc] init];
}
- (SWTextField *(^)(void)) config {
    return ^ () {
        self.placeholder = @"placeholder";
        self.borderStyle = UITextBorderStyleNone;
        self.clearsOnBeginEditing = true;
        self.secureTextEntry = true;
        self.returnKeyType = UIReturnKeyDefault;
        self.leftView = [UIView new];
        self.leftViewMode = UITextFieldViewModeAlways;
        self.clearButtonMode = UITextFieldViewModeAlways;
        return self;
    };
}
- (SWTextField *(^)(CGRect value)) sFrame {
    return ^ (CGRect value) {
        self.frame = value;
        return self;
    };
}
- (SWTextField *(^)(UIFont *value)) sFont {
    return ^ (UIFont *value) {
        self.font = value;
        return self;
    };
}

/// 文本颜色
- (SWTextField*(^)(UIColor *value)) sTextColor {
    return ^ (UIColor *value) {
        self.textColor = value;
        return self;
    };
}

- (SWTextField *(^)(Boolean value)) sSecureTextEntry {
    return ^(Boolean value) {
        self.secureTextEntry = value;
        return self;
    };
}

- (SWTextField *(^)(Boolean value)) sClearsOnBeginEditing {
    return ^(Boolean value) {
        self.clearsOnBeginEditing = value;
        return self;
    };
}

- (SWTextField *(^)(NSString *value)) sText {
    return ^ (NSString *value) {
        self.text = value;
        return self;
    };
}

- (SWTextField *(^)(NSString *value)) sPlaceHolder {
    return ^(NSString *value) {
        self.placeholder = value;
        return self;
    };
}

- (SWTextField *(^)(NSInteger value)) sBorderStyle {
    return ^(NSInteger value) {
        self.borderStyle = value;
        return self;
    };
}

- (SWTextField *(^)(NSInteger value)) sReturnKeyType {
    return ^(NSInteger value) {
        self.returnKeyType = value;
        return self;
    };
}

- (SWTextField *(^)(NSInteger value)) sLeftViewMode {
    return ^(NSInteger value) {
        self.leftViewMode = value;
        return self;
    };
}

- (SWTextField *(^)(NSInteger value)) sClearButtonMode {
    return ^(NSInteger value) {
        self.clearButtonMode = value;
        return self;
    };
}

@end

@implementation UIView (SpeedCreat)

/// 快速创建一个Label 默认 text "label" font 14 numberofline 1
+ (UILabel *)speedCreatLabelWith:(void(^)(SWLabel *label))attributeBlock
{
    SWLabel *label = [[SWLabel alloc] init];
    label.text = @"label";
    [label sizeToFit];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.numberOfLines = 1;
    label.backgroundColor = [UIColor clearColor];
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.shadowColor = [UIColor clearColor];
    label.shadowOffset = CGSizeMake(0, 0);
    if (attributeBlock) {
        attributeBlock(label);
    }
    return label;
}

/// 快速创建一个button 默认 text "button" font 14
+ (UIButton *)speedCreatButtonWith:(void(^)(SWButton *button))attributeBlock
{
    SWButton *button = [SWButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"button" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    button.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    if (attributeBlock) {
        attributeBlock(button);
    }
    return button;
}

@end
