//
//  MyDjBtn.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MyDjBtn.h"

@implementation MyDjBtn

-(instancetype)initWithFrame:(CGRect)frame andImgName:(NSString *)imgName andContentLabel:(NSString *)contentLabel
{
    if (self = [super initWithFrame:frame]) {
        _IconImg = [UIImageView imageViewWithFrame:CGRectZero imageName:imgName];
        [self addSubview:_IconImg];
        [_IconImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(10);
            make.left.equalTo(20);
            make.width.height.equalTo(32);
        }];
        
        _contentLalel = [UILabel labelWithFrame:CGRectZero backgroundColor:[UIColor clearColor] text:contentLabel textColor:UIColorFromRGB(0xAFAFAF) font:[UIFont systemFontOfSize:15] textAlignment:NSTextAlignmentLeft numberOfLines:1 adjustsFontSizeToFitWidth:NO];
        [self addSubview:_contentLalel];
        [_contentLalel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(10);
            make.left.equalTo(self.IconImg.right).offset(10);
            make.right.equalTo(-50);
            make.height.equalTo(32);
        }];
        
        _NextImg = [UIImageView imageViewWithFrame:CGRectZero imageName:@"jiantou"];
        [self addSubview:_NextImg];
        [_NextImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.centerY);
            make.right.equalTo(-20);
            make.width.equalTo(8);
            make.height.equalTo(13);
        }];
        
        _lineImg = [UIImageView imageViewWithFrame:CGRectZero imageName:@"line"];
        [self addSubview:_lineImg];
        [_lineImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.IconImg.bottom).offset(5);
            make.left.equalTo(0);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(1);
        }];
        
    }
    return self;
}

@end
