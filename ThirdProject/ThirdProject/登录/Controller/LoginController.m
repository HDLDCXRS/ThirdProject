//
//  LoginController.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "LoginController.h"
#import "LoginHeadImgView.h"
@interface LoginController ()

@property(nonatomic,strong) LoginHeadImgView *LoginHeadView;

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
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
        make.height.equalTo(200);
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
