//
//  LoginBtnView.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginBtnView : UIView

@property(nonatomic,strong) UITextField *UserNameText;
@property(nonatomic,strong) UITextField *PassWordText;
@property(nonatomic,strong) UIButton *LoginBen;

typedef void(^BtnBlock)(UIButton *btn);
@property(nonatomic,copy) BtnBlock btnBlock;

@end
