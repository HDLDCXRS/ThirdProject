//
//  FirstPageView.h
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SLBannerView.h"
#import "ShuffingViewModel.h"
#import "ShuffingModel.h"
#import "SixButtonView.h"
NS_ASSUME_NONNULL_BEGIN

@interface FirstPageView : UIScrollView
//创建轮播图对象
@property(nonatomic,strong) SLBannerView  * bannerView;
//创建数据对象
@property(nonatomic,strong)  ShuffingViewModel * bannerViewModel;
//创建六个自定义button视图
@property(nonatomic,strong) SixButtonView  * sixObj;
@end

NS_ASSUME_NONNULL_END
