//
//  LoginHeadImgView.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "LoginHeadImgView.h"

@implementation LoginHeadImgView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _HeadImgView = [UIImageView imageViewWithFrame:CGRectZero imageName:@"logo"];
        [self addSubview:_HeadImgView];
        [_HeadImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.center);
            make.width.equalTo(130);
            make.height.equalTo(35);
        }];
    }
    return self;
}
@end
