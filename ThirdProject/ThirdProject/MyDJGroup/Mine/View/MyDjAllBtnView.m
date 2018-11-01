//
//  MyDjAllBtnView.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MyDjAllBtnView.h"

@implementation MyDjAllBtnView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _InforView = [[MyDjBtn alloc] initWithFrame:CGRectZero andImgName:@"myInfo" andContentLabel:@"个人信息"];
        _InforView.tag = 1;
        [self addSubview:_InforView];
        [_InforView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(1);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(55);
        }];
        
        _InforTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushNext:)];
        [_InforView addGestureRecognizer:_InforTap];
        
        
        _IntegralView = [[MyDjBtn alloc] initWithFrame:CGRectZero andImgName:@"integral" andContentLabel:@"个人量化积分"];
        _IntegralView.tag = 2;
        [self addSubview:_IntegralView];
        [_IntegralView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.InforView.bottom).offset(1);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(55);
        }];
        
        _IntegralTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushNext:)];
        [_IntegralView addGestureRecognizer:_IntegralTap];
        
        
        _ChangePassWordView = [[MyDjBtn alloc] initWithFrame:CGRectZero andImgName:@"update_pwd" andContentLabel:@"修改密码"];
        _ChangePassWordView.tag = 3;
        [self addSubview:_ChangePassWordView];
        [_ChangePassWordView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.IntegralView.bottom).offset(1);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(55);
        }];
        
        _ChangePassWordTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushNext:)];
        [_ChangePassWordView addGestureRecognizer:_ChangePassWordTap];
        
        _PayView = [[MyDjBtn alloc] initWithFrame:CGRectZero andImgName:@"update_pwd" andContentLabel:@"党费缴纳"];
        _PayView.tag = 4;
        [self addSubview:_PayView];
        [_PayView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ChangePassWordView.bottom).offset(1);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(55);
        }];
        
        _PayTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushNext:)];
        [_PayView addGestureRecognizer:_PayTap];
        
        _LoginOutBtn = [UIButton buttonWithFrame:CGRectZero backgroundColor:UIColorFromRGB(0xEF473A) setTitle:@"退出登录" setTitleColor:[UIColor whiteColor] state:UIControlStateNormal addTarget:self action:@selector(LoginOut:) forControlEvents:UIControlEventTouchUpInside];
        _LoginOutBtn.hidden = YES;
        _LoginOutBtn.layer.masksToBounds = YES;
        _LoginOutBtn.layer.cornerRadius = 5.0;
        [self addSubview:_LoginOutBtn];
        [_LoginOutBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PayView.bottom).offset(0);
            make.left.equalTo(20);
            make.right.equalTo(-20);
            make.height.equalTo(55);
        }];
    }
    return self;
}

-(void)pushNext:(UITapGestureRecognizer *)tap
{
    if (_tapblock) {
        _tapblock(tap);
    }
}

-(void)LoginOut:(UIButton *)btn
{
    if (_LoginOutBtnBlock) {
        _LoginOutBtnBlock(btn);
    }
}

@end
