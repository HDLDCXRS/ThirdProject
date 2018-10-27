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
        
    }
    return self;
}

@end
