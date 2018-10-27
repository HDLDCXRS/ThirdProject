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
        UIImageView  *bgcImg = [[UIImageView alloc]init];
        bgcImg.image = [UIImage imageNamed:@"bt_bg"];
        [self addSubview:bgcImg];
        [bgcImg makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(0);
            make.size.equalTo(CGSizeMake(SCREENWIDTH, 220));
        }];
        NSArray *textArr = @[@"信工新闻眼", @"掌上组织生活", @"党员云互动", @"党建一点通", @"党员亮身份", @"党史上的今天"];
        NSArray *imgStr = @[@"icon_01",@"icon_02",@"icon_03",@"icon_04",@"icon_05",@"icon_06"];
        for (int i = 0 ; i < textArr.count; i++) {
            OwnDefineBtn *ownBtn = [[OwnDefineBtn alloc] init];
            ownBtn.nameLabel.text = textArr[i];
            ownBtn.imgView.image  = [UIImage imageNamed:imgStr[i]];
            ownBtn.tag = i;
            [self addSubview: ownBtn];
            [ownBtn makeConstraints:^(MASConstraintMaker *make) {
                
                if(i < 3)
                {
                    make.top.equalTo(0);
                }
                else{
                    make.top.equalTo(110);
                }
                make.left.equalTo(SCREENWIDTH / 3 * (i % 3));
                make.size.equalTo(CGSizeMake(SCREENWIDTH / 3, 110));
            }];
            [ownBtn addTarget:self action:@selector(sixBtnClick:) forControlEvents:UIControlEventTouchUpInside];
           
        }
    }
    return self;
}
-(void)sixBtnClick:(UIButton *)btn
{
    if(_clickBlock)
    {
        _clickBlock(btn.tag);
    }
}
@end
