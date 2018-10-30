//
//  HDNavigationViewController.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/25.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "HDNavigationViewController.h"

@interface HDNavigationViewController ()

@end

@implementation HDNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航条上标题的颜色
    self.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    // 设置导航栏的颜色
    self.navigationBar.barTintColor = [UIColor redColor];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:YES];
    if (self.viewControllers.count > 1)
    {
        // 隐藏底部选项卡,显示顶部导航栏
        viewController.navigationController.navigationBarHidden = NO;
        viewController.tabBarController.tabBar.hidden = YES;
        
        // 添加导航栏左边返回按钮
        UIButton *leftBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 9, 26, 26)];
        [leftBtn setImage:[UIImage imageNamed:@"left_Btn"] forState:UIControlStateNormal];
        [leftBtn addTarget:self action:@selector(leftBtnClick) forControlEvents:UIControlEventTouchUpInside];
     
   
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    }
}

- (void)leftBtnClick
{
    [self popViewControllerAnimated:YES];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    [super popViewControllerAnimated:animated];

    if (self.viewControllers.count == 1)
    {
        self.tabBarController.tabBar.hidden = NO;
    }


    return self;
}
@end
