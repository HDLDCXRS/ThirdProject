//
//  UITextField+SLTextFieldCategory.m
//  GeneralPractice
//
//  Created by Travelcolor on 2018/8/12.
//  Copyright © 2018年 Travelcolor. All rights reserved.
//

#import "UITextField+SLTextFieldCategory.h"

@implementation UITextField (SLTextFieldCategory)


//创建textField,无图片，有密码。

+(UITextField *)textFieldWithFrame:(CGRect )frame
                     backgroundColor:(UIColor*)color
                     secureTextEntry:(BOOL)secureTextEntry
                         placeholder:(NSString *)str
                clearsOnBeginEditing:(BOOL)clearsOnBeginEditing
{
    UITextField *textField = [[UITextField alloc] init];
    
    textField.frame = frame ;
    
    textField.backgroundColor = color;
    
    textField.secureTextEntry =secureTextEntry;
    
    //textField.borderStyle = UITextBorderStyleLine;
    
    textField.placeholder = str;
    
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    
    return textField;
    
}

//创建textField,无图片，无密码。

+(UITextField *)textFieldWithFrame:(CGRect )frame
                     backgroundColor:(UIColor*)color
                         placeholder:(NSString *)str
                clearsOnBeginEditing:(BOOL)clearsOnBeginEditing
{
    
    UITextField *textField = [[UITextField alloc] init];
    
    textField.frame = frame ;
    
    textField.backgroundColor = color;
    
    //textField.borderStyle = UITextBorderStyleLine;
    
    textField.placeholder = str;
    
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    
    return textField;
    
}



//创建textField,有图片，无密码。

+(UITextField *)textFieldWithFrame:(CGRect )frame
                          background:(UIImage *)image
                         placeholder:(NSString *)str
                clearsOnBeginEditing:(BOOL)clearsOnBeginEditing
{
    
    UITextField *textField = [[UITextField alloc] init];
    
    textField.frame = frame ;
    
    textField.background = image ;
    
    //textField.borderStyle = UITextBorderStyleLine;
    
    textField.placeholder = str;
    
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    
    return textField;
}

//创建textField,有图片，有密码。

+(UITextField *)textFieldWithFrame:(CGRect )frame
                          background:(UIImage *)image
                     secureTextEntry:(BOOL)secureTextEntry
                         placeholder:(NSString *)str
                clearsOnBeginEditing:(BOOL)clearsOnBeginEditing  {
    
    UITextField *textField = [[UITextField alloc] init];
    
    textField.frame = frame ;
    
    textField.background = image ;
    
    textField.secureTextEntry =secureTextEntry;
    
    // textField.borderStyle = UITextBorderStyleLine;
    
    textField.placeholder = str;
    
    textField.clearsOnBeginEditing =clearsOnBeginEditing;
    
    return textField;
    
    
    
}

@end
