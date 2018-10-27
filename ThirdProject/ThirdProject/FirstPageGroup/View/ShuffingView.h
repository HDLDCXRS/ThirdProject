//
//  ShuffingView.h
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "shuffingViewModel.h"
#import "shuffingModel.h"
#import "SixButtonView.h"
NS_ASSUME_NONNULL_BEGIN

@interface ShuffingView : UIView
@property(nonatomic,strong) ShuffingViewModel  * shuffingViewModelObj;
@property(nonatomic,strong) SLBannerView  * bannerView;
//自定义的button
@property(nonatomic,strong) SixButtonView  * btnView;
@end

NS_ASSUME_NONNULL_END
