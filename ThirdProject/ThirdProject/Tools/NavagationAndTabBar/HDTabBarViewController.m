//
//  HDTabBarViewController.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/25.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "HDTabBarViewController.h"
#import "FirstPageViewController.h"
#import "HDNavigationViewController.h"
#import "NewsNoticeViewController.h"
#import "MyDJViewController.h"
@interface HDTabBarViewController ()

@end

@implementation HDTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置tabBar的背景色
    [self.tabBar setBarTintColor:[UIColor whiteColor]];
    
    [self initTabBarController];
}


-(void)initTabBarController
{
    // 首页模块
    FirstPageViewController *homeVC = [[FirstPageViewController alloc] init];
    homeVC.title = @"首页";
    HDNavigationViewController *homeNag = [self settingTabbarItemWithRootVC:homeVC img:@"party_gray" selectImg:@"party_red"];
    
    // 通知早知道
    NewsNoticeViewController *workPro = [[NewsNoticeViewController alloc] init];
    workPro.title = @"通知早知道";
   HDNavigationViewController *workProNag = [self settingTabbarItemWithRootVC:workPro img:@"msg_gray" selectImg:@"msg_red"];
    
    // 我的党建
    MyDJViewController *processVC = [[MyDJViewController alloc] init];
    processVC.title = @"我的党建";
   HDNavigationViewController *processNag = [self settingTabbarItemWithRootVC:processVC img:@"vip_gray" selectImg:@"vip_red"];
    
    self.viewControllers = @[homeNag, workProNag, processNag];
}

- (HDNavigationViewController *)settingTabbarItemWithRootVC:(id)VC img:(NSString *)imgStr selectImg:(NSString *)selectImg
{
    HDNavigationViewController *nag = [[HDNavigationViewController alloc] initWithRootViewController:VC];
    
    [nag.tabBarItem setImage:[[UIImage imageNamed:imgStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [nag.tabBarItem setSelectedImage:[[UIImage imageNamed:selectImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [nag.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName] forState:UIControlStateNormal];
    [nag.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor redColor] forKey:NSForegroundColorAttributeName] forState:UIControlStateSelected];
    return nag;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //隐藏最根的导航条
    self.navigationController.navigationBar.hidden = NO;
}
@end
