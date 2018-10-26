//
//  MyDJViewController.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/25.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MyDJViewController.h"
#import "MyHeadView.h"

#import "LoginController.h"
@interface MyDJViewController ()

@property(nonatomic,strong) MyHeadView *myHeadView;


@end

@implementation MyDJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationItem.title = @"我的党建";
    [self myHeadView];
}

-(MyHeadView *)myHeadView
{
    if(!_myHeadView)
    {
        _myHeadView = [[MyHeadView alloc] init];
        _myHeadView.backgroundColor = UIColorFromRGB(0xFF1029);
        [self.view addSubview:_myHeadView];
        [_myHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(64);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(200);
        }];
        __weak typeof(self) weakSelf = self;
         _myHeadView.LoginBlock = ^(UITapGestureRecognizer *tap) {
             [weakSelf.navigationController pushViewController:[[LoginController alloc ] init] animated:YES];
        };
    }
    return  _myHeadView;
}

@end
