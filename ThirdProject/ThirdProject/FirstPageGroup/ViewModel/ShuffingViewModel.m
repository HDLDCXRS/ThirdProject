//
//  ShuffingViewModel.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "ShuffingViewModel.h"
#import "ShuffingModel.h"
@implementation ShuffingViewModel
//
-(AFHTTPSessionManager *)manager
{
    if (!_manager) {
        _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:WEBURL];
//        _manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//        _manager.responseSerializer =[AFHTTPResponseSerializer serializer];
        
    }
    return _manager;
}
-(void)gainShuffingData:(void(^)(NSMutableArray *shuffingData))shuffingDataArray
{
    [self.manager GET:@"hhdj/carousel/carouselList.do?" parameters:@{@"type":@"0"} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if ([responseObject[@"msg"] isEqual:@"请求成功"])
        {
            NSMutableArray *shuffingArr = [AssignToObject customModel:@"ShuffingModel" ToArray:responseObject[@"rows"]] ;
            if (shuffingDataArray) {
                shuffingDataArray(shuffingArr);
            }
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败");
    }];
}
@end
