//
//  FirstPageViewController.m
//  ThirdProject
//
//  Created by Ss’dy on 2018/10/25.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "FirstPageViewController.h"
#import "FirstPageView.h"
@interface FirstPageViewController ()
@property(nonatomic,strong) FirstPageView  * firstPage;
@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //设置导航栏的属性
    [self navigationMethod];
    //初始化首页视图
    _firstPage = [[FirstPageView alloc] init];
    [self.view addSubview:_firstPage];
    [_firstPage makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(64);
        make.left.equalTo(0);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENHEIGHT - 64 - 50));
    }];
    //实现六个按钮视图的点击事件
    _firstPage.sixObj.clickBlock = ^(NSInteger index) {
        switch (index) {
                //新闻眼
            case 0:{
                
            } break;
                //掌上组织生活
            case 1:{
                
            } break;
                //党员云互动
            case 2:{
                
            } break;
                //党建一点通
            case 3:{
                
            } break;
                //党员亮身份
            case 4:{
                
            } break;
                //党史上今天
            case 5:{
                
            } break;
        }
    };
    //实现视图下面4个按钮点击事件
    _firstPage.fourBtnClickBlock = ^(NSInteger index) {
        switch (index) {
                //随时随地学
            case 0:{
                
            } break;
                //随时随地拍
            case 1:{
                
            } break;
                //制度建设
            case 2:{
                
            } break;
                //特色活动
            case 3:{
                
            } break;
        }
    };

}
//导航栏方法
-(void)navigationMethod
{
    [self.navigationItem setTitle:@""];
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 7, 120, 30)];
    imgView.image = [UIImage imageNamed:@"logo"];
    [self.navigationController.navigationBar addSubview:imgView];
}
@end
