//
//  AFNetPostGet.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/30.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "AFNetPostGet.h"

@implementation AFNetPostGet

//get请求
+(void)initGET:(NSString *)url andparameters:(NSDictionary *)par ResponseObject:(void (^_Nullable)(id  _Nullable responseObject))ResponseObjectSuccess Failure:(void (^_Nullable)(NSError * _Nonnull error))error;
{
    if ([UIView isConnectionAvailable]) {
        AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:WEBURL];
        //设置请求方式
        manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        //接受数据是JSON形式给出
        manager.responseSerializer = [AFJSONResponseSerializer serializer];
        [manager GET:url parameters:par progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            ResponseObjectSuccess(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            NSLog(@"error = %@ ", error);
            //        error(error);
        }];
    }
    else
    {
        [UIView showMessage:@"网络异常，请检查网络"];
    }
    
}
//post请求
+(void)initPOST:(NSString *)url andparameters:(NSDictionary *)par ResponseObject:(void (^_Nullable)(id  _Nullable responseObject))ResponseObjectSuccess Failure:(void (^_Nullable)(NSError * _Nonnull error))error;
{
    if ([UIView isConnectionAvailable]) {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        NSString *token = [userDefaults objectForKey:@"token的值"];
        AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:WEBURL];
        //设置请求方式
        manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        //接受数据是JSON形式给出
        manager.responseSerializer = [AFJSONResponseSerializer serializer];
        //给请求头添加token的值
        [manager.requestSerializer setValue:token forHTTPHeaderField:@"token"];
        [manager POST:url parameters:par progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            ResponseObjectSuccess(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {            
            NSLog(@"error = %@ ", error);
        }];
    }
    else
    {
        [UIView showMessage:@"网络异常，请检查网络"];
    }
    
}

@end
