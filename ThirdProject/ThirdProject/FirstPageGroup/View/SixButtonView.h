//
//  SixButtonView.h
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^buttonBlock)(UIButton * btn);
@interface SixButtonView : UIButton
@property(nonatomic,strong) UILabel  * nameLabel;
@property(nonatomic,strong) UIButton  * nameBtn;
@property(nonatomic,copy) buttonBlock  jump;
@end

NS_ASSUME_NONNULL_END
