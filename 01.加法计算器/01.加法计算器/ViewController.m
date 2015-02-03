//
//  ViewController.m
//  01.加法计算器
//
//  Created by 王玥鹏 on 15/2/3.
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

- (IBAction)compute
{
    NSLog(@"进行计算");
    NSString *num1 = self.num1.text;
    NSString *num2 = self.num2.text;
    int result = num1.intValue + num2.intValue;
    self.result.text = [NSString stringWithFormat:@"%d",result];
}

@end
