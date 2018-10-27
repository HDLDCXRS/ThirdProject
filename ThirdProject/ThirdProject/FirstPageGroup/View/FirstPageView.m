//
//  FirstPageView.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "FirstPageView.h"

@implementation FirstPageView
-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        //轮播图
        _bannerView = [[SLBannerView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 220)];
        _bannerView.placeholderImg = [UIImage imageNamed:@"banner"];
        [self addSubview:_bannerView];
        //请求轮播图接口
        _bannerViewModel  = [[ShuffingViewModel alloc]init];
        __weak typeof(self) weakSelf = self;
        [_bannerViewModel gainShuffingData:^(NSMutableArray * _Nonnull shuffingData) {
            NSMutableArray *imgArr = [[NSMutableArray alloc] initWithCapacity:1];
            NSMutableArray *titleArr = [[NSMutableArray alloc] initWithCapacity:1];
            for(ShuffingModel *banner in shuffingData)
            {
                [imgArr addObject:banner.imgUrl];
                [titleArr addObject:banner.title];
            }
            weakSelf.bannerView.slImages = imgArr;
            weakSelf.bannerView.slTitles = titleArr;
            weakSelf.bannerView.titleLabel.textColor = [UIColor whiteColor];
        }];
        //六个button按钮
        _sixObj = [[SixButtonView alloc] init];
        [self addSubview:_sixObj];
        [_sixObj makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.bannerView.bottom).offset(0);
            make.left.equalTo(0);
            make.size.equalTo(CGSizeMake(SCREENWIDTH, 220));
        }];
        //
        _leftImgView = [[UIImageView alloc] init];
        _leftImgView.image = [UIImage imageNamed:@"banner01"];
        [self addSubview:_leftImgView];
        [_leftImgView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.sixObj.bottom).offset(0);
            make.left.equalTo(0);
            make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENWIDTH * 115.0 / 480));
        }];
        //底部图片
        //djImgView
        _bottomView = [[UIImageView alloc] init]; ///WithImage:UIImageFile(@"special_column", @"png")];
        _bottomView.image = [UIImage imageNamed:@"special_column"];
        [self addSubview:_bottomView];
        [_bottomView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.leftImgView.bottom).offset(0);
            make.left.equalTo(0);
            make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENWIDTH * 210.0 / 480));
        }];
        
        double djImgHeight = SCREENWIDTH * 210.0 / 480;
        //下面4个按钮
        for(int i = 0; i < 4; i++)
        {
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.tag = i;
            [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btn];
            [btn makeConstraints:^(MASConstraintMaker *make) {
                if(i < 2)
                {
                    make.top.equalTo(self.leftImgView.bottom).offset(0);
                }
                else{
                    make.top.equalTo(self.leftImgView.bottom).offset(djImgHeight / 2);
                }
                make.left.equalTo(SCREENWIDTH / 3 + (i % 2) * SCREENWIDTH / 3);
                make.size.equalTo(CGSizeMake(SCREENWIDTH / 3, djImgHeight / 2));
            }];
        }
        
        [self layoutIfNeeded];
        self.contentSize = CGSizeMake(SCREENWIDTH, self.bottomView.frame.origin.y + self.bottomView.frame.size.height);
    }
    return self;
}
- (void)btnClicked:(UIButton *)btn
{
    if(_fourBtnClickBlock)
    {
        _fourBtnClickBlock(btn.tag);
    }
}
@end
