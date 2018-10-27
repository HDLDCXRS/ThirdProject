//
//  OwnDefineBtn.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "OwnDefineBtn.h"

@implementation OwnDefineBtn

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _imgView = [[UIImageView alloc] init];
        [self addSubview:_imgView];
        [_imgView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(20);
            make.centerX.equalTo(self.centerX);
            make.size.equalTo(CGSizeMake(51, 51));
        }];
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.textAlignment = NSTextAlignmentCenter;
        _nameLabel.font = [UIFont systemFontOfSize:13.0];
        [self addSubview:_nameLabel];
        [_nameLabel makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.imgView.bottom).offset(0);
            make.centerX.equalTo(self.centerX);
            make.width.equalTo(SCREENWIDTH);
            make.height.equalTo(19);
        }];
    }
    return self;
}

@end
