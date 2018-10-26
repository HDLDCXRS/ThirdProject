//
//  ShuffingViewModel.h
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShuffingViewModel : NSObject
@property(nonatomic,strong) AFHTTPSessionManager  * manager;
//请求数据
-(void)gainShuffingData:(void(^)(NSMutableArray *shuffingData))shuffingDataArray;
@end

NS_ASSUME_NONNULL_END
