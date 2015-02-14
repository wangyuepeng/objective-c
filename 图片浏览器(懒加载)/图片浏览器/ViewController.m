//
//  ViewController.m
//  图片浏览器
//
//  Created by 王玥鹏 on 15/2/10.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import "ViewController.h"

#define WIDTH [[UIScreen mainScreen]bounds].size.width
#define HEIGHT [[UIScreen mainScreen]bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (UILabel *)noLabel
{
    if (!_noLabel) {
        _noLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 22, WIDTH, 44)];
        [_noLabel setTextAlignment:NSTextAlignmentCenter];
        [self.view addSubview:_noLabel];
    }
    return _noLabel;
}

- (UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 70, 175, 175)];
        [self.view addSubview:_imageView];
    }
    return _imageView;
}

- (UILabel *)descLabel
{
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, WIDTH, 60)];
        [_descLabel setTextAlignment:NSTextAlignmentCenter];
        [self.view addSubview:_descLabel];
    }
    return _descLabel;
}

- (UIButton *)leftButton
{
    if (!_leftButton) {
        _leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _leftButton.frame = CGRectMake(25, 157.5f, 30, 30);
        [_leftButton setBackgroundImage:[UIImage imageNamed:@"left_normal"] forState:UIControlStateNormal];
        [_leftButton setBackgroundImage:[UIImage imageNamed:@"left_highlighted"] forState:UIControlStateHighlighted];
        [self.view addSubview:_leftButton];
        [_leftButton addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftButton;
}

-(UIButton *)rightButton
{
    if (!_rightButton) {
        _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _rightButton.frame = CGRectMake(320, 157.5f, 30, 30);
        [_rightButton setBackgroundImage:[UIImage imageNamed:@"right_normal"] forState:UIControlStateNormal];
        [_rightButton setBackgroundImage:[UIImage imageNamed:@"right_highlighted"] forState:UIControlStateHighlighted];
        [self.view addSubview:_rightButton];
        [_rightButton addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _rightButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)leftClick
{
    NSLog(@"left");
    self.index--;
    [self changeImage];
}

- (void)rightClick
{
    NSLog(@"right");
    self.index++;
    [self changeImage];
}

/*
 * 使用plist文件初始化imageArray
 */
- (NSArray *)imageArray
{
    if(_imageArray == nil){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"plist"];
        _imageArray = [NSArray arrayWithContentsOfFile:path];
    }
    return _imageArray;
}

- (void)changeImage
{
    int noIndex = self.index + 1;
    [self.noLabel setText:[NSString stringWithFormat:@"%d/%d",noIndex,5]];

    [self.imageView setImage:[UIImage imageNamed:self.imageArray[self.index][@"name"]]];
    [self.descLabel setText:self.imageArray[self.index][@"desc"]];
    if (self.index == 4) {
        [self.rightButton setEnabled:NO];
    }else{
        [self.rightButton setEnabled:YES];
    }
        
    if (self.index == 0) {
        [self.leftButton setEnabled:NO];
    }else{
        [self.leftButton setEnabled:YES];
    }

}

@end
