//
//  UIView+LYCUIView.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "UIView+LYCUIView.h"

@implementation UIView (LYCUIView)

+(void)showMessage:(NSString *)mssage
{
    UIAlertView *alerView = [[UIAlertView alloc ]initWithTitle:@"提示" message:mssage delegate:nil cancelButtonTitle:nil otherButtonTitles:@"正确", nil];
    [alerView show];
}

@end
