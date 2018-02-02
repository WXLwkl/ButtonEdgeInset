//
//  ViewController.m
//  ButtonEdgeInset
//
//  Created by 王凯丽 on 16/6/29.
//  Copyright © 2016年 KL. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+FixMultiClick.h"
#import "UIButton+EdgeInset.h"
#import "MyButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    UIButton *btn                  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor            = [UIColor redColor];
    btn.frame                      = CGRectMake(150, 50, 100, 120);
    [btn setTitle:@"QQ登陆" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:18];;
    [btn setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(goHome:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [btn titleBottomAndImageTopWithSpace:7];
    
    
    UIButton *btn1                  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.backgroundColor            = [UIColor redColor];
    //防止双击 -- runtime机制 用法
    btn1.cs_acceptEventInterval = 1;//时间间隔
    btn1.frame                      = CGRectMake(150, 200, 100, 120);
    [btn1 setTitle:@"微信登陆" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    btn1.titleLabel.font = [UIFont systemFontOfSize:14];;
    [btn1 setImage:[UIImage imageNamed:@"flake"] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(goHome:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    [btn1 titleTopAndImageBottomWithSpace:10];

    
    UIButton *btn2                  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.backgroundColor            = [UIColor redColor];

    btn2.cs_acceptEventInterval = 1;//时间间隔
    btn2.frame                      = CGRectMake(100, 350, 200, 120);
    [btn2 setTitle:@"新浪登陆" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    btn2.titleLabel.font = [UIFont systemFontOfSize:20];;
    [btn2 setImage:[UIImage imageNamed:@"flake"] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(goHome:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    [btn2 titleRightAndImageLeftWithSpace:50];
    
    
    UIButton *btn3                  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.backgroundColor            = [UIColor redColor];

//    btn3.cs_acceptEventInterval = 1;//时间间隔
    btn3.frame                      = CGRectMake(100, 500, 200, 120);
    [btn3 setTitle:@"新浪登陆" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    btn3.titleLabel.font = [UIFont systemFontOfSize:20];;
    [btn3 setImage:[UIImage imageNamed:@"flake"] forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(goHome:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    [btn3 titleLeftAndImageRightWithSpace:20];
    
    
    MyButton *btn4 = [MyButton buttonWithType:UIButtonTypeCustom title:@"ABCDEFG" image:[UIImage imageNamed:@"1.png"] frame:CGRectMake(0, 100, 300, 150) ButtonEdgeInsetsStyle:ButtonEdgeInsetsStyleTop buttonClick:^(UIButton *sender) {
        NSLog(@"--%@",sender.titleLabel.text);
    }];
    [self.view addSubview:btn4];
    
    MyButton *btn5 = [MyButton buttonWithType:UIButtonTypeCustom title:@"ABC" frame:CGRectMake(0, 260, 300, 50) buttonClick:^(UIButton *sender) {
        NSLog(@"--%@",sender.titleLabel.text);
    }];
    [self.view addSubview:btn5];
}

- (void)goHome:(id)sender {
    //防止双击
//    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(gohome) object:nil];
//    [self performSelector:@selector(gohome) withObject:nil afterDelay:.5];
    
    NSLog(@"%s",__func__);
}

@end
