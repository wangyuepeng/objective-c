//
//  ViewController.m
//  01-作业-QQ登录界面
//
//  Created by 王玥鹏 on 15/2/5.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import "ViewController.h"

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

- (void)login
{
    NSLog(@"QQ号码：%@",self.qqNumber.text);
    NSLog(@"QQ密码：%@",self.pwd.text);
    
    [self.view endEditing:YES];
}

@end
