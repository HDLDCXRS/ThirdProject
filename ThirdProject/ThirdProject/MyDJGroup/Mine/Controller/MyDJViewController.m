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
#import "MineChangeController.h"


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
    [self userDefault];
    [self getView];
}
-(NSUserDefaults *)userDefault
{
    if(!_userDefault)
    {
        _userDefault = [NSUserDefaults standardUserDefaults];
    }
    return  _userDefault;
}
#pragma mark --视图
-(void)getView
{
    //创建头像及用户名的视图
    _myHeadView = [[MyHeadView alloc] init];
    _myHeadView.backgroundColor = UIColorFromRGB(0xC50206);
    [self.view addSubview:_myHeadView];
    [_myHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(64);
        make.left.equalTo(0);
        make.width.equalTo(SCREENWIDTH);
        make.height.equalTo(150);
    }];
    //点击用户名进入登录界面
    __weak typeof(self) weakSelf = self;
    _myHeadView.LoginBlock = ^(UITapGestureRecognizer *tap) {
        //手势进入登录界面
        [weakSelf.navigationController pushViewController:[[LoginController alloc ] init] animated:YES];
    };
    //创建个人信息等按钮视图
    _myAllBtnView = [[MyDjAllBtnView alloc] init];
    [self.view addSubview:_myAllBtnView];
    [_myAllBtnView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.myHeadView.bottom).offset(0);
        make.left.equalTo(0);
        make.width.equalTo(SCREENWIDTH);
        make.bottom.equalTo(-50);
    }];
    //修改密码的控制器
    MineChangeController *changPassVC = [[MineChangeController alloc] init];
    //判断是要调到那个控制
    _myAllBtnView.tapblock = ^(UITapGestureRecognizer *tapGesture) {
        if (tapGesture == weakSelf.myAllBtnView.InforTap) {
            NSLog(@"跳的个人信息的界面");
        }
        if (tapGesture == weakSelf.myAllBtnView.IntegralTap) {
            NSLog(@"跳的个人量化积分的界面");
        }
        if (tapGesture == weakSelf.myAllBtnView.ChangePassWordTap) {
            //判断是否登录、如果登录则进入修改密码的控制器，否则进入登录界面
            [weakSelf JudgeLoginandViewController:changPassVC];
            NSLog(@"跳的改变密码的界面");
        }
        if (tapGesture == weakSelf.myAllBtnView.PayTap) {
            NSLog(@"跳的党费缴纳的界面");
        }
    };
    //退出登录
    
    self.myAllBtnView.LoginOutBtnBlock = ^(UIButton *Btn) {
        if ([weakSelf.IsLogin isEqualToString:@"登录成功"]) {
            NSLog(@"退出登录的操作");
            //头像变成原来的图片
            weakSelf.myHeadView.HeadImgView.image = [UIImage imageNamed:@"my_head"];
            //用户名的文字修改
            weakSelf.myHeadView.UserNameLabel.text = @"马上登陆，获取更多党建咨询";
            //开启头像的交互功能
            weakSelf.myHeadView.userInteractionEnabled = YES;
            //隐藏登录按钮
            weakSelf.myAllBtnView.LoginOutBtn.hidden = YES;
            //
//            weakSelf.userDefault remo
            [weakSelf.userDefault setValue:@"未登录" forKey:@"IsLogin"];
            [weakSelf.userDefault setValue:@"" forKey:@"token的值"];
            [weakSelf.userDefault setValue:@"" forKey:@"头像"];
            [weakSelf.userDefault setValue:@"" forKey:@"用户名"];
        }
    };
    
    NSLog(@"id = %@",NSHomeDirectory());
}
//判断是否登录
-(void)JudgeLoginandViewController:(UIViewController *)VC
{
    _userDefault = [NSUserDefaults standardUserDefaults];
    _IsLogin = [self.userDefault objectForKey:@"IsLogin"];
    //判断是否登录、如果登录则进入“VC”的控制器，否则进入登录界面
    if ([self.IsLogin isEqualToString:@"登录成功"]) {
        [self.navigationController pushViewController:VC animated:YES];
    }
    else{
        [self.navigationController pushViewController:[[LoginController alloc ] init] animated:YES];
    }
}


- (void)viewWillAppear:(BOOL)animated
{
    //    创建”NSUserDefaults“
    _IsLogin = [self.userDefault objectForKey:@"IsLogin"];
    NSString *HeadImgUrl = [self.userDefault objectForKey:@"头像"];
    NSString *UserName = [self.userDefault objectForKey:@"用户名"];
    if ([self.IsLogin isEqualToString:@"登录成功"]) {
        
        //头像图片要修改
        [self.myHeadView.HeadImgView setImageWithURL:[NSURL URLWithString:HeadImgUrl]];
        //用户名要修改
        self.myHeadView.UserNameLabel.text = UserName;
        //显示退出登录的按钮
        self.myAllBtnView.LoginOutBtn.hidden = NO;
        //取消头像视图的交互功能
        self.myHeadView.userInteractionEnabled = NO;
    }
}

@end
