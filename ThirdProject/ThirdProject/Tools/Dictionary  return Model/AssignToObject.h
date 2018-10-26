//
//  AssignToObject.h
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
NS_ASSUME_NONNULL_BEGIN

@interface AssignToObject : NSObject
+(id)propretyKeysWithString:(NSString *)classStr;
+(id)reflectDataFromOtherObject:(id)dataSource andObjectStr:(NSString *)classStr;
+(NSMutableArray *)customModel:(NSString *)modelClass ToArray:(id)array;

@end

NS_ASSUME_NONNULL_END
