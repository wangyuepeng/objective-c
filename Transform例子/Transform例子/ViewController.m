//
//  ViewController.m
//  Transform例子
//
//  Created by 王玥鹏 on 15/2/8.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_imageButton setFrame:CGRectMake(130, 22, 100, 100)];
    [_imageButton setBackgroundImage:[UIImage imageNamed:@"btn_01"] forState:UIControlStateNormal];
    [_imageButton setTitle:@"点我啊" forState:UIControlStateNormal];
    [_imageButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_imageButton setTitle:@"摸我啊" forState:UIControlStateHighlighted];
    [_imageButton setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    [self.view addSubview:_imageButton];
    
    UIButton *upButton = [UIButton buttonWithType:UIButtonTypeCustom];
    upButton.frame = CGRectMake(60, 400, 30, 30);
    [upButton setBackgroundImage:[UIImage imageNamed:@"top_normal"] forState:UIControlStateNormal];
    [upButton setBackgroundImage:[UIImage imageNamed:@"top_highlighted"] forState:UIControlStateHighlighted];
    upButton.tag = 11;
    [self.view addSubview:upButton];
    [upButton addTarget:(self) action:@selector(move:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *bottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottomButton setFrame:CGRectMake(60, 450, 30, 30)];
    [bottomButton setImage:[UIImage imageNamed:@"bottom_normal"] forState:UIControlStateNormal];
    [bottomButton setImage:[UIImage imageNamed:@"bottom_highlighted"] forState:UIControlStateHighlighted];
    bottomButton.tag = 12;
    [self.view addSubview:bottomButton];
    [bottomButton addTarget:(self) action:@selector(move:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(22, 425, 30, 30);
    [leftButton setBackgroundImage:[UIImage imageNamed:@"left_normal"] forState:UIControlStateNormal];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"left_highlighted"] forState:UIControlStateHighlighted];
    [self.view addSubview:leftButton];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(96, 425, 30, 30);
    [rightButton setBackgroundImage:[UIImage imageNamed:@"right_normal"] forState:UIControlStateNormal];
    [rightButton setBackgroundImage:[UIImage imageNamed:@"right_highlighted"] forState:UIControlStateHighlighted];
    [self.view addSubview:rightButton];
    
    UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
    plusButton.frame = CGRectMake(220, 420, 30, 30);
    [plusButton setBackgroundImage:[UIImage imageNamed:@"plus_normal"] forState:UIControlStateNormal];
    [plusButton setBackgroundImage:[UIImage imageNamed:@"plus_highlighted"] forState:UIControlStateHighlighted];
    [self.view addSubview:plusButton];
    [plusButton addTarget:(self) action:@selector(zoom:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)move:(id)button
{
    NSLog(@"--------");
    UIButton *buttonTemp = (UIButton *)button;
    switch (buttonTemp.tag) {
        case 11:
            self.imageButton.transform = CGAffineTransformTranslate(self.imageButton.transform, 0.0, -5.0);
            break;
        case 12:
            self.imageButton.transform = CGAffineTransformTranslate(self.imageButton.transform, 0.0, 5.0);
            break;
        default:
            break;
    }
    
}

- (void)zoom:(id)button
{
    NSLog(@"--------");
    self.imageButton.transform = CGAffineTransformScale(self.imageButton.transform, 2.0, 2.0);
}

- (void)rotate:(id)button
{
    
}

@end
