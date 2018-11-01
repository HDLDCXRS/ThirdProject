//
//  MineChangPassWordAllVeiw.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/31.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MineChangeTextFiledView.h"
@interface MineChangPassWordAllVeiw : UIView

@property(nonatomic,strong) UILabel *OldPassLabel;
@property(nonatomic,strong) MineChangeTextFiledView *OldPassView;
@property(nonatomic,strong) UILabel *NewPassLabel;
@property(nonatomic,strong) MineChangeTextFiledView *NewPassView;
@property(nonatomic,strong) MineChangeTextFiledView *NewAgainPassView;

@property(nonatomic,strong) UIButton *SubmitBtn;
typedef void (^BtnBlock)(UIButton *btn);
@property(nonatomic,copy) BtnBlock SubmitBtnBlock;

@end
