//
//  ViewController.m
//  testAAA
//
//  Created by wxw on 2017/10/5.
//  Copyright © 2017年 wxw. All rights reserved.
//

#import "ViewController.h"
//开发期---发布期
#ifdef DEBUG
#define WWLog(...) NSLog(__VA_ARGS__)
#else
#define WWLog(...)
#endif

//屏幕宽高
#define WWScreenWidth  [UIScreen mainScreen].bounds.size.width
#define WWScreenHeight [UIScreen mainScreen].bounds.size.height

//RGB色
#define WWColor(r,g,b)   [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define WWColorWithA(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
//随机色
#define WWRandomColor WWColor(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256))

//http不能访问修正
//1、在Info.plist中添加 NSAppTransportSecurity 类型 Dictionary ;
//2、在 NSAppTransportSecurity 下添加 NSAllowsArbitraryLoads 类型Boolean ,值设为 YES;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.view.backgroundColor = WWRandomColor;
}

@end
