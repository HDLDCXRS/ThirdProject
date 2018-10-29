//
//  CommonDefine.h
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/25.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h


//屏幕的宽度和高度
#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
//颜色转换
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
//轮播图的请求接口
#define WEBURL [NSURL URLWithString:@"http://211.67.177.56:8080/"]
//登录接口
#define LoginUrl @"hhdj/user/userLogin.do"
#endif /* CommonDefine_h */
