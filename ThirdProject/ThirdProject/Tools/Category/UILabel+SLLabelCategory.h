//
//  UILabel+SLLabelCategory.h
//  GeneralPractice
//
//  Created by Travelcolor on 2018/8/12.
//  Copyright © 2018年 Travelcolor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SLLabelCategory)

/**
 创建lable
 */
+ (UILabel *)labelWithFrame:(CGRect)frame
            backgroundColor:(UIColor *)color
                       text:(NSString *)text
                  textColor:(UIColor *)textcolor
                       font:(UIFont *)font
              textAlignment:(NSTextAlignment)textAlignment
              numberOfLines:(int)numberOfLines
  adjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth;

@end
