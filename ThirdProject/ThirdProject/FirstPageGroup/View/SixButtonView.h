//
//  SixButtonView.h
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/27.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OwnDefineBtn.h"
NS_ASSUME_NONNULL_BEGIN

@interface SixButtonView : UIView
//@property(nonatomic,strong) OwnDefineBtn  * ownBtn;
typedef void(^SixItemClickBlock)(NSInteger index);
@property(nonatomic,copy) SixItemClickBlock clickBlock;
@end

NS_ASSUME_NONNULL_END
