//
//  UIView+LYCUIView.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LYCUIView)

//提示信息
+(void)showMessage:(NSString *)mssage;

//判断是否有网
+(BOOL)isConnectionAvailable;
//加载提示
+ (void)showMBProgressHUD:(NSString *)showMessage andWhereView:(UIView *)view;
+ (void)hideMBprogressHUD:(UIView *)view;

@end
