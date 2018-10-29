//
//  MyDjBtn.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyDjBtn : UIView

@property(nonatomic,strong) UIImageView *IconImg;
@property(nonatomic,strong) UILabel *contentLalel;
@property(nonatomic,strong) UIImageView *NextImg;
@property(nonatomic,strong) UIImageView *lineImg;

-(instancetype)initWithFrame:(CGRect)frame andImgName:(NSString *)imgName andContentLabel:(NSString *)contentLabel;

@end
