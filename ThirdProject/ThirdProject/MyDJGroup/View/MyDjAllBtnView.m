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
            make.top.equalTo(0);
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
            make.top.equalTo(self.InforView.bottom).offset(0);
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
            make.top.equalTo(self.IntegralView.bottom).offset(0);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(55);
        }];
        
        _ChangePassWordTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushNext:)];
        [_ChangePassWordView addGestureRecognizer:_ChangePassWordTap];
    }
    return self;
}

-(void)pushNext:(UITapGestureRecognizer *)tap
{
    if (_tapblock) {
        _tapblock(tap);
    }
}


@end
