//
//  FirstPageViewController.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/25.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "FirstPageViewController.h"
#import "ShuffingView.h"
@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //设置导航栏的属性
    [self.navigationItem setTitle:@""];
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 7, 120, 30)];
    imgView.image = [UIImage imageNamed:@"logo"];
    [self.navigationController.navigationBar addSubview:imgView];
    
    ShuffingView *shuffingObj = [[ShuffingView alloc]init];
    [self.view addSubview:shuffingObj];
    [shuffingObj makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(64);
        make.left.equalTo(0);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENWIDTH-64-50));
    }];

}

@end
