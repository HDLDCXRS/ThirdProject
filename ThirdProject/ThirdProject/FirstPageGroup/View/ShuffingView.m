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
        
        //六个按钮
        NSArray *nameStr = @[@"信工新闻眼",@"掌上组织生活",@"党员云互动",@"党建一点通",@"党员亮身份",@"党史上的今天"];
        NSArray *imgStr = @[@"icon_01",@"icon_02",@"icon_03",@"icon_04",@"icon_05",@"icon_06"];
        for (int i = 0; i <imgStr.count; i++) {
            
            _btnView = [SixButtonView buttonWithType:UIButtonTypeCustom];
            [self addSubview:_btnView];
            [_btnView.nameBtn setImage:[UIImage imageNamed:imgStr[i]] forState:UIControlStateNormal];
            [_btnView.nameBtn setTitle:nameStr[i] forState:UIControlStateNormal];
            [_btnView makeConstraints:^(MASConstraintMaker *make) {
                if (i < 3) {
                    make.top.equalTo(self.bannerView.bottom).offset(0);
                      make.left.equalTo(20 + 70 * i);
                }
                else
                {
                    make.top.equalTo(self.bannerView.bottom).offset(70);
                      make.left.equalTo(20 + 70 * (i - 3));
                }
                make.size.equalTo(CGSizeMake(100, 70));
            }];
           
        }
    }
    return self;
}
@end
