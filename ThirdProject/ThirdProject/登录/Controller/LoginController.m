//
//  LoginController.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "LoginController.h"
#import "LoginHeadImgView.h"
#import "LoginBtnView.h"
#import "AFHTTPSessionManager.h"
@interface LoginController ()

@property(nonatomic,strong) LoginHeadImgView *LoginHeadView;
@property(nonatomic,strong) LoginBtnView *LoginBtnView;
@property(nonatomic,strong) AFHTTPSessionManager *manager;


@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColorFromRGB(0xC50206);
    self.navigationController.navigationItem.title = @"登录";
    [self initlogoView];
}
#pragma mark --视图
-(void)initlogoView
{
    
    _LoginHeadView = [[LoginHeadImgView alloc] init];
    [self.view addSubview:_LoginHeadView];
    [_LoginHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(64);
        make.left.equalTo(0);
        make.width.equalTo(SCREENWIDTH);
        make.height.equalTo(150);
    }];
    
    _LoginBtnView = [[LoginBtnView alloc] init];
    [self.view addSubview:_LoginBtnView];
    [_LoginBtnView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LoginHeadView.bottom).offset(0);
        make.left.equalTo(0);
        make.width.equalTo(SCREENWIDTH);
        make.height.equalTo(180);
    }];
    __weak typeof(self) weakSelf = self;
    _LoginBtnView.btnBlock = ^(UIButton *btn) {
        NSString *userName = weakSelf.LoginBtnView.UserNameText.text;
        NSString *passWord = weakSelf.LoginBtnView.PassWordText.text;
        if ([userName isEqual: @""] || [passWord  isEqual: @""] ) {
            //测试用的账号不用登陆
            [weakSelf GetDataFromInterandUserName:@"1001" andPassword:@"123456"];
//            [UIView showMessage:@"账户名或密码不能为空"];
        }
        else
        {
            [weakSelf GetDataFromInterandUserName:userName andPassword:passWord];
        }
    };
}
//获得登录数据
-(void)GetDataFromInterandUserName:(NSString *)username andPassword:(NSString *)password
{
    _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:WEBURL];
    _manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    _manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [self.manager POST:LoginUrl parameters:@{@"id_card":username,@"password":password} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString *str = responseObject[@"msg"];
        NSUserDefaults *UserDefaults = [NSUserDefaults standardUserDefaults];
        NSLog(@"responseObject = %@",responseObject);
        
        if ([str isEqualToString:@"用户名不存在"]) {
            [UIView showMessage:str];
        }
        if ([str isEqualToString:@"用户密码错误"]) {
            [UIView showMessage:str];
        }
        if([str isEqualToString:@"登录成功"])
        {
            NSString *HeaderUrl = [responseObject[@"data"] objectForKey:@"header"];
            [UserDefaults setValue:str forKey:@"IsLogin"];
            [UserDefaults setValue:responseObject[@"token"] forKey:@"token的值"];
            [UserDefaults setValue:HeaderUrl forKey:@"头像"];

        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error = %@",error);
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
