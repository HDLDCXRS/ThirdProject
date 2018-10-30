//
//  UIView+LYCUIView.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "UIView+LYCUIView.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
@implementation UIView (LYCUIView)

+(void)showMessage:(NSString *)mssage
{
    UIAlertView *alerView = [[UIAlertView alloc ]initWithTitle:@"提示" message:mssage delegate:nil cancelButtonTitle:nil otherButtonTitles:@"正确", nil];
    [alerView show];
}

//判断是否有网络连接
+(BOOL)isConnectionAvailable
{
    BOOL isExistenceNetwork = YES;

    Reachability *reach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    switch ([reach currentReachabilityStatus]) {
        case NotReachable:
            isExistenceNetwork = NO;
            break;
        case ReachableViaWiFi:
            isExistenceNetwork = YES;
            break;
        case ReachableViaWWAN:
            isExistenceNetwork = YES;
            break;
    }

    return isExistenceNetwork;
}
//显示加载提示
+ (void)showMBProgressHUD:(NSString *)showMessage andWhereView:(UIView *)view
{
    MBProgressHUD *loadingView = [MBProgressHUD showHUDAddedTo:view animated:YES];
    loadingView.label.text = showMessage;
}
//隐藏加载提示
+ (void)hideMBprogressHUD:(UIView *)view
{
    [MBProgressHUD hideHUDForView:view animated:YES];
}

@end
