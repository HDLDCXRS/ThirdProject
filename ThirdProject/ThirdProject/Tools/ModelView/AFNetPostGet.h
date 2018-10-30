//
//  AFNetPostGet.h
//  ThirdProject
//
//  Created by 何龙 on 2018/10/30.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFNetPostGet : NSObject

+(void)initGET:(NSString *)url andparameters:(NSDictionary *)par ResponseObject:(void (^_Nullable)(id  _Nullable responseObject))ResponseObjectSuccess Failure:(void (^_Nullable)(NSError * _Nonnull error))error ;

@end
