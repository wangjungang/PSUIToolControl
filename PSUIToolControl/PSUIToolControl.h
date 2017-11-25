//
//  PSUIToolControl.h
//  PSUIToolControl
//
//  Created by 王俊钢 on 2017/11/25.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PSUIToolControl : NSObject
+ (UILabel *_Nullable)createLabelFrame:(CGRect)frame text:(NSString *_Nullable)text color:(UIColor *_Nullable)color tont:(NSInteger)font;
+ (UIView *_Nullable)createViewframe:(CGRect)frame color:(UIColor *_Nullable)color;
+ (UIImageView *_Nullable)createImageViewframe:(CGRect)frame imageName:(NSString *_Nullable)imageName;
+ (UIButton *_Nullable)createButtonframe:(CGRect)frame imageName:(NSString *_Nullable)imageName target:(id _Nullable )target action:(SEL _Nullable)action title:(NSString *_Nullable)title titleColor:(UIColor *_Nullable)color;
+ (UITextField *_Nullable)createTextFieldframe:(CGRect)frame placeholder:(NSString *_Nullable)placeholer passWord:(BOOL)YESorNO font:(CGFloat)font;
+ (UITableView *_Nullable)createTableViewframe:(CGRect)frame target:(id _Nullable )target;
+ (UITextView *_Nullable)createTextViewframe:(CGRect)frame text:(NSString *_Nullable)text color:(UIColor *_Nullable)color font:(NSInteger)font edit:(BOOL)edit;
@end
