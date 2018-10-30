//
//  MyDJViewController.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/25.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MyDJViewController.h"
#import "MyHeadView.h"
#import "MyDjAllBtnView.h"

#import "LoginController.h"
@interface MyDJViewController ()

@property(nonatomic,strong) MyHeadView *myHeadView;
@property(nonatomic,strong) MyDjAllBtnView *myAllBtnView;
@property(nonatomic,strong) NSUserDefaults *userDefault;
@property(nonatomic,strong) NSString *IsLogin;

@end

@implementation MyDJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationItem.title = @"我的党建";
    [self getView];
}
#pragma mark --视图
-(void)getView
{
    _userDefault = [NSUserDefaults standardUserDefaults];
    NSString *isLogin = [self.userDefault objectForKey:@"IsLogin"];
    NSString *HeadImgUrl = [self.userDefault objectForKey:@"头像"];
    NSString *UserName = [self.userDefault objectForKey:@"用户名"];
    _myHeadView = [[MyHeadView alloc] init];
    _myHeadView.backgroundColor = UIColorFromRGB(0xC50206);
    [self.view addSubview:_myHeadView];
    [_myHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(64);
        make.left.equalTo(0);
        make.width.equalTo(SCREENWIDTH);
        make.height.equalTo(150);
    }];
    
<<<<<<< HEAD
=======
    if ([isLogin isEqualToString:@"登录成功"]) {
        [self.myHeadView.HeadImgView setImageWithURL:[NSURL URLWithString:HeadImgUrl]];
        self.myHeadView.UserNameLabel.text = UserName;
    }
    
>>>>>>> 020152602fda3d6fb4e88bfc47bbb5e02d90cf18
    __weak typeof(self) weakSelf = self;
    _myHeadView.LoginBlock = ^(UITapGestureRecognizer *tap) {
        [weakSelf.navigationController pushViewController:[[LoginController alloc ] init] animated:YES];
    };
    
    _myAllBtnView = [[MyDjAllBtnView alloc] init];
    [self.view addSubview:_myAllBtnView];
    [_myAllBtnView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.myHeadView.bottom).offset(0);
        make.left.equalTo(0);
        make.width.equalTo(SCREENWIDTH);
        make.height.equalTo(180);
    }];
    
    _myAllBtnView.tapblock = ^(UITapGestureRecognizer *tapGesture) {
        if (tapGesture == weakSelf.myAllBtnView.InforTap) {
            NSLog(@"跳的个人信息的界面");
        }
        if (tapGesture == weakSelf.myAllBtnView.IntegralTap) {
            NSLog(@"跳的个人量化积分的界面");
        }
        if (tapGesture == weakSelf.myAllBtnView.ChangePassWordTap) {
            NSLog(@"跳的改变密码的界面");
        }
        if (tapGesture == weakSelf.myAllBtnView.PayTap) {
            NSLog(@"跳的党费缴纳的界面");
        }
    };
    
    if ([self.IsLogin isEqualToString:@"登录成功"]) {
        self.myAllBtnView.LoginOutBtnBlock = ^(UIButton *Btn) {
            NSLog(@"退出登录的操作");
        };
    }
    
    NSLog(@"id = %@",NSHomeDirectory());
}
- (void)viewWillAppear:(BOOL)animated
{
    _userDefault = [NSUserDefaults standardUserDefaults];
    _IsLogin = [self.userDefault objectForKey:@"IsLogin"];
    NSString *HeadImgUrl = [self.userDefault objectForKey:@"头像"];
    NSString *UserName = [self.userDefault objectForKey:@"用户名"];
    if ([self.IsLogin isEqualToString:@"登录成功"]) {
        [self.myHeadView.HeadImgView setImageWithURL:[NSURL URLWithString:HeadImgUrl]];
        self.myHeadView.UserNameLabel.text = UserName;
        self.myAllBtnView.LoginOutBtn.hidden = NO;
    }
    
}

@end
