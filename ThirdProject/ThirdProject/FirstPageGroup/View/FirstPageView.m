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
    }
    return self;
}

@end
