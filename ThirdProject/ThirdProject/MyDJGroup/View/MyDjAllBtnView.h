//
//  MyDjAllBtnView.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyDjBtn.h"
@interface MyDjAllBtnView : UIView

@property(nonatomic,strong) MyDjBtn *InforView;
@property(nonatomic,strong) UITapGestureRecognizer *InforTap;
@property(nonatomic,strong) MyDjBtn *IntegralView;
@property(nonatomic,strong) UITapGestureRecognizer *IntegralTap;
@property(nonatomic,strong) MyDjBtn *ChangePassWordView;
@property(nonatomic,strong) UITapGestureRecognizer *ChangePassWordTap;

typedef void (^TapBlock)(UITapGestureRecognizer *tapGesture);
@property(nonatomic,copy) TapBlock tapblock;



@end
