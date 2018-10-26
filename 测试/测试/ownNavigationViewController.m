//
//  ownNavigationViewController.m
//  测试
//
//  Created by Ss’dy on 2018/10/26.
//  Copyright © 2018年 cuibeihong. All rights reserved.
//

#import "ownNavigationViewController.h"
#import "ViewController.h"
@interface ownNavigationViewController ()

@end

@implementation ownNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // [self.navigationItem setTitle:@"世界"];
    
    ownNavigationViewController *nav = [[ownNavigationViewController alloc]initWithRootViewController:[[ViewController alloc]init]];
    nav.navigationBar.barTintColor = [UIColor yellowColor];
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
