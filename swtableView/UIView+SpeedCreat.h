//
//  UIView+SpeedCreat.h
//  swtableView
//
//  Created by jc on 2017/11/17.
//  Copyright © 2017年 shiwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWLabel : UILabel

+ (SWLabel *)label;
- (SWLabel *(^)(void)) config;
- (SWLabel *(^)(CGRect value)) sFrame;
- (SWLabel *(^)(CGSize value)) sShadowOffset;
- (SWLabel *(^)(UIFont *value))  sFont;
- (SWLabel *(^)(UIColor *value)) sTextColor;
- (SWLabel *(^)(UIColor *value)) sShadowColor;
- (SWLabel *(^)(UIColor *value)) sBackgroundColor;
- (SWLabel *(^)(NSString *value)) sText;
- (SWLabel *(^)(NSInteger value)) sTextAlignment;
- (SWLabel *(^)(NSInteger value)) sNumberOfLines;
- (SWLabel *(^)(NSInteger value)) sLineBreakMode;

@end

@interface SWButton : UIButton

+ (SWButton *)customButton;
+ (SWButton *)systemButton;
- (SWButton *(^)(void)) config;
- (SWButton *(^)(CGRect value)) sFrame;
- (SWButton *(^)(UIFont *value)) sFont;
- (SWButton *(^)(UIColor *value)) sTextNormalColor;
- (SWButton *(^)(UIColor *value)) sTextSelectedColor;
- (SWButton *(^)(UIImage *value)) sNormalImage;
- (SWButton *(^)(UIImage *value)) sSelectedImage;
- (SWButton *(^)(UIImage *value)) sNormalBackgroundImage;
- (SWButton *(^)(UIImage *value)) sSelectedBackgroundImage;
- (SWButton *(^)(NSString *value)) sNormalText;
- (SWButton *(^)(NSString *value)) sSelectedText;
- (SWButton *(^)(NSString *value)) sHighlightText;
- (SWButton *(^)(NSInteger value)) sContentVerticalAlignment;
- (SWButton *(^)(NSInteger value)) sContentHorizontalAlignment;
- (SWButton *(^)(UIEdgeInsets value)) sImageEdgeInsets;
- (SWButton *(^)(UIEdgeInsets value)) sTitleEdgeInsets;
- (SWButton *(^)(UIEdgeInsets value)) sContentEdgeInsets;
- (SWButton *(^)(id target, SEL sel, NSInteger controevents))sSelector;

@end

@interface SWTextField : UITextField

+ (SWTextField *)textField;
- (SWTextField *(^)(void)) config;
- (SWTextField *(^)(CGRect value)) sFrame;
- (SWTextField *(^)(UIFont *value)) sFont;
- (SWTextField *(^)(Boolean value)) sSecureTextEntry;
- (SWTextField *(^)(Boolean value)) sClearsOnBeginEditing;
- (SWTextField *(^)(NSString *value)) sText;
- (SWTextField *(^)(UIColor *value)) sTextColor;
- (SWTextField *(^)(NSString *value)) sPlaceHolder;
- (SWTextField *(^)(NSInteger value)) sBorderStyle;
- (SWTextField *(^)(NSInteger value)) sReturnKeyType;
- (SWTextField *(^)(NSInteger value)) sLeftViewMode;
- (SWTextField *(^)(NSInteger value)) sClearButtonMode;

@end

@interface UIView (SpeedCreat)

+ (UILabel *)speedCreatLabelWith:(void(^)(SWLabel *label))attributeBlock;
+ (UIButton *)speedCreatButtonWith:(void(^)(SWButton *button))attributeBlock;

@end
