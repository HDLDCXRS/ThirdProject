//
//  ShuffingView.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "ShuffingView.h"
@implementation ShuffingView
-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        //轮播图
        _bannerView = [[SLBannerView alloc]initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 200)];
        //设置占位图
        _bannerView.placeholderImg = [UIImage imageNamed:@"banner"];
        [self addSubview:_bannerView];
        //拿到请求下来的数据  并且拿出里面的图片
        _shuffingViewModelObj = [[ShuffingViewModel alloc]init];
        __weak typeof(self) weakSelf = self;
        [_shuffingViewModelObj gainShuffingData:^(NSMutableArray * _Nonnull shuffingData) {
            //图片数组
            NSMutableArray *imgArr = [NSMutableArray arrayWithCapacity:1];
            //图片标题数组
            NSMutableArray *titleArr = [NSMutableArray arrayWithCapacity:1];
            for (ShuffingModel *modelObj in shuffingData) {
                [imgArr addObject:modelObj.imgUrl];
                [titleArr addObject:modelObj.title];
            }
            //将d拿到的数据放置到轮播图里面
            weakSelf.bannerView.slImages = imgArr;
            weakSelf.bannerView.slTitles = titleArr;
            weakSelf.bannerView.titleLabel.textColor = [UIColor whiteColor];
            
        }];
    }
    return self;
}
@end
