//
//  OtherViewController.m
//  CustomNavigationView
//
//  Created by yang on 16/7/28.
//  Copyright © 2016年 poplary. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:126/255.0 green:254/255.0 blue:245/255.0 alpha:1];
    //替换导航系统自带背景 实现自定义
    for (UIView *view in self.navigationController.navigationBar.subviews) {
        if ([view isKindOfClass:NSClassFromString(@"_UINavigationBarBackground")]) {
            [view removeFromSuperview];
        }
    }
    UIView *overlay = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width,64)];
    UIImageView *mesBimg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, overlay.frame.size.width, 20)];
    mesBimg.image = [UIImage imageNamed:@"bgimg.jpg"];
    [overlay addSubview:mesBimg];
    overlay.backgroundColor = [UIColor greenColor];
    [self.navigationController.navigationBar insertSubview:overlay atIndex:0];
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
