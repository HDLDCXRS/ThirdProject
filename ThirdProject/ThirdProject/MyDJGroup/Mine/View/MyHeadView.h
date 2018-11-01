//
//  MyHeadView.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyHeadView : UIView

@property(nonatomic,strong) UIImageView *HeadImgView;
@property(nonatomic,strong) UITapGestureRecognizer *HeadImgTap;

@property(nonatomic,strong) UILabel *UserNameLabel;
@property(nonatomic,strong) UITapGestureRecognizer *UserNameTap;

typedef void(^TapBlock)(UITapGestureRecognizer *tap);
@property(nonatomic,copy) TapBlock LoginBlock;

@end
