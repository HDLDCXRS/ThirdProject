//
//  MyHeadView.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MyHeadView.h"

@implementation MyHeadView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) { 
        //头像的视图
        _HeadImgView = [UIImageView imageViewWithFrame:CGRectZero imageName:@"my_head"];
        _HeadImgView.userInteractionEnabled = YES;
        _HeadImgView.layer.masksToBounds = YES;
        _HeadImgView.layer.cornerRadius = 34.0;
        [self addSubview:_HeadImgView];
        [_HeadImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.center);
            make.width.height.equalTo(68);
        }];
        //头像的手势
        _HeadImgTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(Login:)];
        [_HeadImgView addGestureRecognizer:_HeadImgTap];
        //登陆的用户名的视图
        _UserNameLabel = [UILabel labelWithFrame:CGRectZero backgroundColor:UIColorFromRGB(0xC50206) text:@"马上登陆，获取更多党建咨询" textColor:UIColorFromRGB(0xF6E9E9) font:[UIFont systemFontOfSize:17.0] textAlignment:NSTextAlignmentCenter numberOfLines:1 adjustsFontSizeToFitWidth:NO];
        _UserNameLabel.userInteractionEnabled = YES;
        [self addSubview:_UserNameLabel];
        [_UserNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.HeadImgView.bottom).offset(10);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(20);
        }];
        //登陆的用户名的手势
        _UserNameTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(Login:)];
        [_UserNameLabel addGestureRecognizer:_UserNameTap];
        
        
        
    }
    return self;
}
-(void)Login:(UITapGestureRecognizer *)tap
{
    if (_LoginBlock) {
        _LoginBlock(tap);
    }
}
@end
