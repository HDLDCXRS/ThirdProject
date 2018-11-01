//
//  MineChangeController.m
//  ThirdProject
//
//  Created by 何龙 on 2018/10/31.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "MineChangeController.h"
#import "MineChangPassWordAllVeiw.h"
@interface MineChangeController ()

@property(nonatomic,strong) MineChangPassWordAllVeiw *ChangePassAllVeiw;

@end

@implementation MineChangeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"修改密码";
    [self getView];
}
#pragma mark --视图
-(void)getView
{
    _ChangePassAllVeiw = [[MineChangPassWordAllVeiw alloc] initWithFrame:CGRectZero];
    [self.view addSubview:_ChangePassAllVeiw];
    [_ChangePassAllVeiw mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(64);
        make.left.equalTo(0);
        make.width.equalTo(SCREENWIDTH);
        make.height.equalTo(500);
    }];
    __weak typeof(self)  weakSelf = self;
    _ChangePassAllVeiw.SubmitBtnBlock = ^(UIButton *btn) {
        NSString *oldStr = weakSelf.ChangePassAllVeiw.OldPassView.textFild.text ;
        NSString *newStr = weakSelf.ChangePassAllVeiw.NewPassView.textFild.text;
        NSString *newAginStr = weakSelf.ChangePassAllVeiw.NewAgainPassView.textFild.text;
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        NSString *userOldPass = [userDefaults objectForKey:@"密码"];
        NSString *token = [userDefaults objectForKey:@"token的值"];
        if (![oldStr isEqualToString:userOldPass]) {
            [UIView showMessage:@"旧密码不能为空或输入错误，请输入旧密码！"];
        }
        else
        {
            if (![newStr isEqualToString:@""] && ![newAginStr isEqualToString:@""] && [newStr isEqualToString:newAginStr] ) {
                AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:WEBURL];
                //设置请求方式
                manager.requestSerializer = [AFHTTPRequestSerializer serializer];
                //接受数据是JSON形式给出
                manager.responseSerializer = [AFJSONResponseSerializer serializer];
                [manager.requestSerializer setValue:token forHTTPHeaderField:@"token"];
                [manager POST:ChangePassWord parameters:@{@"oldPwd":userOldPass,@"newPwd":newStr} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                    NSLog(@"responseObject = %@",responseObject[@"msg"]);
                    if ([responseObject[@"msg"] isEqualToString:@"密码修改成功"]) {
                        [UIView showMessage:@"修改密码成功"];
                        [weakSelf.navigationController popViewControllerAnimated:YES];
                    }
                } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                    
                    NSLog(@"error = %@ ", error);
                }];
                
            }
            else
            {
                [UIView showMessage:@"两次输入不相同或为空，请输入"];
            }
        }
    };
}

- (void)viewWillAppear:(BOOL)animated
{
    self.ChangePassAllVeiw.OldPassView.textFild.text = @"";
    self.ChangePassAllVeiw.NewPassView.textFild.text = @"";
    self.ChangePassAllVeiw.NewAgainPassView.textFild.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
