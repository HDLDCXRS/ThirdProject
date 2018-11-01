//
//  MineChangeTextFiledView.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/31.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MineChangeTextFiledView.h"

@implementation MineChangeTextFiledView

-(instancetype)initWithFrame:(CGRect)frame andStr:(NSString *)str
{
    if (self = [super initWithFrame:frame]) {
        //用户名Text
        _textFild = [[UITextField alloc] init];
        _textFild.attributedPlaceholder = [self gainAttributedStrFormStr:str];
        _textFild.backgroundColor = [UIColor whiteColor];
        _textFild.layer.masksToBounds = YES;
        _textFild.layer.cornerRadius = 5.0;
        _textFild.layer.borderWidth = 1.0;
        _textFild.layer.borderColor = UIColorFromRGB(0x8A8A8A).CGColor;
        _textFild.delegate = self;
        [self addSubview:_textFild];
        [_textFild mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(0);
            make.centerX.equalTo(0);
            make.width.equalTo(350);
            make.height.equalTo(42);
        }];
    }
    return self;
}

//通过NSString得到一个NSAttributedString
-(NSAttributedString *)gainAttributedStrFormStr:(NSString *)str
{
    NSAttributedString *attStr = [[NSAttributedString alloc] initWithString:str attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.0],NSForegroundColorAttributeName:UIColorFromRGB(0x8A8A8A)}];
    return attStr;
}

@end
