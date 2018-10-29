//
//  LoginBtnView.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "LoginBtnView.h"

@implementation LoginBtnView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self  = [super initWithFrame:frame]) {
        //用户名Text
        _UserNameText = [[UITextField alloc] init];
        _UserNameText.attributedPlaceholder = [self gainAttributedStrFormStr:@"身份证号"];
        _UserNameText.backgroundColor = UIColorFromRGB(0xC50206);
        _UserNameText.layer.masksToBounds = YES;
        _UserNameText.layer.cornerRadius = 5.0;
        _UserNameText.layer.borderWidth = 1.0;
        _UserNameText.layer.borderColor = UIColorFromRGB(0xFFFF00).CGColor;
        [self addSubview:_UserNameText];
        [_UserNameText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(0);
            make.centerX.equalTo(0);
            make.width.equalTo(300);
            make.height.equalTo(42);
        }];
        //密码Text
        _PassWordText = [[UITextField alloc] init];
        _PassWordText.attributedPlaceholder = [self gainAttributedStrFormStr:@"密码"];
        _PassWordText.secureTextEntry = YES;
        _PassWordText.backgroundColor = UIColorFromRGB(0xC50206);
        _PassWordText.layer.masksToBounds = YES;
        _PassWordText.layer.cornerRadius = 5.0;
        _PassWordText.layer.borderWidth = 1.0;
        _PassWordText.layer.borderColor = UIColorFromRGB(0xFFFF00).CGColor;
        [self addSubview:_PassWordText];
        [_PassWordText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.UserNameText.bottom).offset(10);
            make.centerX.equalTo(0);
            make.width.equalTo(300);
            make.height.equalTo(42);
        }];
        //登录按钮
        _LoginBen = [UIButton buttonWithFrame:CGRectZero backgroundColor:UIColorFromRGB(0xC50206) setTitle:@"登录" setTitleColor:[UIColor whiteColor] state:UIControlStateNormal addTarget:self  action:@selector(Login:) forControlEvents:UIControlEventTouchUpInside];
        _LoginBen.layer.masksToBounds = YES;
        _LoginBen.layer.cornerRadius = 5.0;
        _LoginBen.layer.borderWidth = 1.0;
        _LoginBen.layer.borderColor = UIColorFromRGB(0xFFFF00).CGColor;
        [self addSubview:_LoginBen];
        [_LoginBen mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PassWordText.bottom).offset(10);
            make.centerX.equalTo(0);
            make.width.equalTo(300);
            make.height.equalTo(42);
        }];
        
    }
    return self;
}
//登录按钮的事件
-(void)Login:(UIButton *)btn
{
    if (_btnBlock) {
        _btnBlock(btn);
    }
}
//通过NSString得到一个NSAttributedString
-(NSAttributedString *)gainAttributedStrFormStr:(NSString *)str
{
    NSAttributedString *attStr = [[NSAttributedString alloc] initWithString:str attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.0],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    return attStr;
}


@end
