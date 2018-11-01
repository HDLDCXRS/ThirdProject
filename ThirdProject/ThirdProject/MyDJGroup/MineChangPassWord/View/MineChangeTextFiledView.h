//
//  MineChangeTextFiledView.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/31.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineChangeTextFiledView : UIView<UITextFieldDelegate>

@property(nonatomic,strong) UITextField *textFild;
-(instancetype)initWithFrame:(CGRect)frame andStr:(NSString *)str;

@end
