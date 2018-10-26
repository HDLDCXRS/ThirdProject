//
//  AssignToObject.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "AssignToObject.h"

@implementation AssignToObject
+(id)propretyKeysWithString:(NSString *)classStr
{
    unsigned int outCount , i ;
    //获取一个类的各个成员变量放在properties[]数组中
    objc_property_t  *properties = class_copyPropertyList([NSClassFromString(classStr) class], &outCount);
    NSMutableArray *keys = [[NSMutableArray alloc]initWithCapacity:outCount];
    for (i= 0; i < outCount; i++) {
        objc_property_t  property = properties[i];
        NSString *proopertyName = [[NSString alloc]initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        [keys addObject:proopertyName];
    }
    free(properties);
    return keys;
}
//用字典为各个类赋值
+(id)reflectDataFromOtherObject:(id)dataSource andObjectStr:(NSString *)classStr
{
    id model = [[NSClassFromString(classStr) alloc] init];
    for (NSString * key in [self propretyKeysWithString:classStr] ) {
        id propertyValue = [dataSource stringForColumn:key];
        //该值不为NSNULL，并且也不为nil
        if (![propertyValue isKindOfClass:[NSNull class]] && propertyValue !=nil) {
            [model setValue:propertyValue forKey:key];
        }
    }
    return model;
}
+(NSMutableArray *)customModel:(NSString *)modelClass ToArray:(id)array
{
    //创建一个数组存放对象
    NSMutableArray *objectArr = [[NSMutableArray alloc] initWithCapacity:1];
    for (int i = 0 ; i < [array count]; i++) {
        //取出数组中的一个对象
        id Dic = array[i];
        //如果这个对象不是字典类型，就跳过，继续下一个
        if(![Dic isKindOfClass:[NSDictionary class]])
        {
            continue;
        }
        //创建一个传过来的字符串相应地类的对象
        id model = [[NSClassFromString(modelClass) alloc] init];
        [model setValuesForKeysWithDictionary:Dic];
        //把转化完成的对象加入到一个数组中
        [objectArr addObject:model];
    }
    return objectArr;
}

@end
