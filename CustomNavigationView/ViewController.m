//
//  ViewController.m
//  CustomNavigationView
//
//  Created by yang on 16/7/28.
//  Copyright © 2016年 poplary. All rights reserved.
//

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#import "ViewController.h"
#import "OtherViewController.h"
@interface ViewController ()<UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:156/255.0 green:145/255.0 blue:245/255.0 alpha:1];
    //设置开始位置从navigation下面开始UIRectEdgeNone/UIRectEdgeAll/UIRectEdgeLeft/UIRectEdgeRight/UIRectEdgeBottom/UIRectEdgeTop
    typedef enum : NSUInteger {
        UIRectEdgeNone   = 0,
        UIRectEdgeTop    = 1 << 0,
        UIRectEdgeLeft   = 1 << 1,
        UIRectEdgeBottom = 1 << 2,
        UIRectEdgeRight  = 1 << 3,
        UIRectEdgeAll = UIRectEdgeTop | UIRectEdgeLeft | UIRectEdgeBottom | UIRectEdgeRight
    } UIRectEdge;
    //默认是UIRectEdgeAll 如果有导航 默认从顶部开始 多出44pi
    self.edgesForExtendedLayout = UIRectEdgeRight;
    UILabel *testLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
    testLab.backgroundColor = [UIColor grayColor];
    testLab.text = @"1234567890";
    [self.view addSubview:testLab];
    //设置导航标题
    self.title = @"123";
    //设置导航栏的背景图片
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bgimg.jpg"] forBarMetrics:UIBarMetricsDefault];
    //改变title下面的背景图
    UIView *view = [self.navigationController.navigationBar.subviews objectAtIndex:1];
    view.backgroundColor = [UIColor greenColor];
    view.layer.cornerRadius = 5;
//    //获取label修改属性 失败
//    UILabel *lab = [view.subviews objectAtIndex:0];
//    lab.text = @"test";
//    
    //可用来自定义titlelabel标签
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(([self.title length] < 10 ?NSTextAlignmentCenter : NSTextAlignmentLeft), 0, 480,44)];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Arial" size:10];
    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor brownColor];
    label.text=self.title;
    self.navigationItem.titleView = label;
//    //修改title颜色
//    //UIColor * color = [UIColor whiteColor];
//    //这里我们设置的是颜色，还可以设置shadow等，具体可以参见api
//    //NSDictionary * dict = [NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
//    //self.navigationController.navigationBar.titleTextAttributes = dict;
//    //也可用来修改titlelabel属性
//    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
//                                                                     [UIColor colorWithRed:0.5 green:0.7 blue:0.8 alpha:1], UITextAttributeTextColor,
//                                                                     [UIColor colorWithRed:0 green:0.7 blue:0.8 alpha:1], UITextAttributeTextShadowColor,
//                                                                     [NSValue valueWithUIOffset:UIOffsetMake(1, 2)], UITextAttributeTextShadowOffset,
//                                                                     [UIFont fontWithName:@"Arial-Bold" size:0.0], UITextAttributeFont,
//                                                                     nil]];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
