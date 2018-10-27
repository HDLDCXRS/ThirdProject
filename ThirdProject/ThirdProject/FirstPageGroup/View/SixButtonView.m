//
//  SixButtonView.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "SixButtonView.h"

@implementation SixButtonView

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
       
        _nameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_nameBtn];
        [_nameBtn makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(0);
            make.size.equalTo(CGSizeMake(40, 40));
        }];
        _nameLabel = [UILabel labelWithFrame:CGRectZero backgroundColor:[UIColor whiteColor] text:@"" textColor:[UIColor grayColor] font:[UIFont systemFontOfSize:18.0] textAlignment:NSTextAlignmentLeft numberOfLines:0 adjustsFontSizeToFitWidth:YES];
        [self addSubview:_nameLabel];
        [_nameLabel makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.nameBtn.top).offset(0);
            make.centerX.equalTo(0);
            make.size.equalTo(CGSizeMake(100, 20));
        }];
        
    }
    return self;
}

@end
