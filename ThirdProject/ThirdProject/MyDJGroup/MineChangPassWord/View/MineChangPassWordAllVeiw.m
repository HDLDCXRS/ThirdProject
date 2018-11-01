//
//  MineChangPassWordAllVeiw.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/31.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MineChangPassWordAllVeiw.h"

@implementation MineChangPassWordAllVeiw

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _OldPassLabel = [UILabel labelWithFrame:CGRectZero backgroundColor:[UIColor clearColor] text:@"旧密码：" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:20.0] textAlignment:NSTextAlignmentLeft numberOfLines:1 adjustsFontSizeToFitWidth:NO];
        [self addSubview:_OldPassLabel];
        [_OldPassLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(0);
            make.left.equalTo(10);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(40);
        }];
        _OldPassView = [[MineChangeTextFiledView alloc] initWithFrame:CGRectZero andStr:@"输入旧密码"];
        [self addSubview:_OldPassView];
        [_OldPassView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.OldPassLabel.bottom).offset(10);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(50);
        }];
        
        _NewPassLabel = [UILabel labelWithFrame:CGRectZero backgroundColor:[UIColor clearColor] text:@"新密码：" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:20.0] textAlignment:NSTextAlignmentLeft numberOfLines:1 adjustsFontSizeToFitWidth:NO];
        [self addSubview:_NewPassLabel];
        [_NewPassLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.OldPassView.bottom).offset(20);
            make.left.equalTo(10);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(40);
        }];
        _NewPassView = [[MineChangeTextFiledView alloc] initWithFrame:CGRectZero andStr:@"输入新密码"];
        _NewPassView.textFild.secureTextEntry = YES;
        [self addSubview:_NewPassView];
        [_NewPassView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.NewPassLabel.bottom).offset(10);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(50);
        }];
        
        _NewAgainPassView = [[MineChangeTextFiledView alloc] initWithFrame:CGRectZero andStr:@"再次输入新密码"];
        _NewAgainPassView.textFild.secureTextEntry = YES;
        [self addSubview:_NewAgainPassView];
        [_NewAgainPassView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.NewPassView.bottom);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(50);
        }];
        
        _SubmitBtn = [UIButton buttonWithFrame:CGRectZero backgroundColor:UIColorFromRGB(0xC50206) setTitle:@"提交" setTitleColor:[UIColor whiteColor] state:UIControlStateNormal addTarget:self action:@selector(Submit:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_SubmitBtn];
        [_SubmitBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.NewAgainPassView.bottom);
            make.centerX.equalTo(self.centerX);
            make.width.equalTo(200);
            make.height.equalTo(50);
        }];
    }
    return self;
}

-(void)Submit:(UIButton *)btn
{
    if (_SubmitBtnBlock) {
        _SubmitBtnBlock(btn);
    }
}


@end
