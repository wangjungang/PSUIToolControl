//
//  PSUIToolControl.m
//  PSUIToolControl
//
//  Created by 王俊钢 on 2017/11/25.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "PSUIToolControl.h"

@implementation PSUIToolControl
+ (UILabel *_Nullable)createLabelFrame:(CGRect)frame text:(NSString *_Nullable)text color:(UIColor *_Nullable)color tont:(NSInteger)font {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    if (font) {
        label.font = [UIFont systemFontOfSize:font];
    }
    if (color) {
        label.textColor = color;
    }
    if (text) {
        label.text = text;
    }
    return label;
}
+ (UIView *_Nullable)createViewframe:(CGRect)frame color:(UIColor *_Nullable)color {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    return view;
}
+ (UIImageView *_Nullable)createImageViewframe:(CGRect)frame imageName:(NSString *_Nullable)imageName {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    if (imageName) {
        imageView.image = [UIImage imageNamed:imageName];
    }
    imageView.userInteractionEnabled = YES;
    return imageView;
}
+ (UIButton *_Nullable)createButtonframe:(CGRect)frame imageName:(NSString *_Nullable)imageName target:(id _Nullable )target action:(SEL _Nullable)action title:(NSString *_Nullable)title titleColor:(UIColor *_Nullable)color {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    if (color) {
        [button setTitleColor:color forState:UIControlStateNormal];
    }
    if (imageName) {
        [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
+ (UITextField *_Nullable)createTextFieldframe:(CGRect)frame placeholder:(NSString *_Nullable)placeholer passWord:(BOOL)YESorNO font:(CGFloat)font {
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    if (placeholer) {
        textField.placeholder = placeholer;
    }
    textField.textAlignment = NSTextAlignmentLeft;
    if (font) {
        textField.font = [UIFont systemFontOfSize:font];
    }
    textField.textColor = [UIColor blackColor];
    textField.secureTextEntry = YESorNO;
    textField.autocapitalizationType = NO;
    textField.clearButtonMode = YES;
    return textField;
}
+ (UITableView *_Nullable)createTableViewframe:(CGRect)frame target:(id _Nullable )target {
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
    tableView.delegate = target;
    tableView.dataSource = target;
    return tableView;
}
+ (UITextView *_Nullable)createTextViewframe:(CGRect)frame text:(NSString *_Nullable)text color:(UIColor *_Nullable)color font:(NSInteger)font edit:(BOOL)edit {
    UITextView *textView = [[UITextView alloc] initWithFrame:frame];
    textView.editable = edit;
    if (font) {
        textView.font = [UIFont systemFontOfSize:font];
    }
    if (color) {
        textView.textColor = color;
    }
    if (text) {
        textView.text = text;
    }
    return textView;
}

@end
