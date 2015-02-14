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

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"w=%f，h=%f",WIDTH,HEIGHT);
    UILabel *noLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 22, WIDTH, 44)];
    [noLabel setTextAlignment:NSTextAlignmentCenter];
    [noLabel setText:@"1/5"];
    [self.view addSubview:noLabel];
    self.noLabel = noLabel;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 70, 175, 175)];
    UIImage *image = [UIImage imageNamed:@"biaoqingdi"];
    [imageView setImage:image];
    [self.view addSubview:imageView];
    self.imageView = imageView;
    
    UILabel *descLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, WIDTH, 60)];
    [descLabel setText:@"神马表情都弱爆了"];
    [descLabel setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:descLabel];
    self.descLabel = descLabel;
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(25, 157.5f, 30, 30);
    [leftButton setBackgroundImage:[UIImage imageNamed:@"left_normal"] forState:UIControlStateNormal];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"left_highlighted"] forState:UIControlStateHighlighted];
    [self.view addSubview:leftButton];
    leftButton.enabled = NO;
    self.leftButton = leftButton;
    [leftButton addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(320, 157.5f, 30, 30);
    [rightButton setBackgroundImage:[UIImage imageNamed:@"right_normal"] forState:UIControlStateNormal];
    [rightButton setBackgroundImage:[UIImage imageNamed:@"right_highlighted"] forState:UIControlStateHighlighted];
    [self.view addSubview:rightButton];
    self.rightButton = rightButton;
    [rightButton addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
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
 *使用switch语句实现
 */
//- (void)changeImage
//{
//    switch (self.index) {
//        case 0:
//        {
//            UIImage *image = [UIImage imageNamed:@"biaoqingdi"];
//            [self.imageView setImage:image];
//            break;
//        }
//        case 1:
//        {
//            UIImage *image = [UIImage imageNamed:@"bingli"];
//            [self.imageView setImage:image];
//            break;
//        }
//        case 2:
//        {
//            UIImage *image = [UIImage imageNamed:@"chiniupa"];
//            [self.imageView setImage:image];
//            break;
//        }
//        case 3:
//        {
//            UIImage *image = [UIImage imageNamed:@"danteng"];
//            [self.imageView setImage:image];
//            break;
//        }
//        case 4:
//        {
//            UIImage *image = [UIImage imageNamed:@"wangba"];
//            [self.imageView setImage:image];
//            break;
//        }
//        default:
//            break;
//    }
//    
//    int noIndex = self.index + 1;
//    [self.noLabel setText:[NSString stringWithFormat:@"%d/%d",noIndex,5]];
//    if (self.index == 4) {
//        [self.rightButton setEnabled:NO];
//    }else{
//        [self.rightButton setEnabled:YES];
//    }
//    
//    if (self.index == 0) {
//        [self.leftButton setEnabled:NO];
//    }else{
//        [self.leftButton setEnabled:YES];
//    }
//}

/*
 *使用字典和数组实现
 */
//- (void)changeImage
//{
//    NSDictionary *image1 = [NSDictionary dictionaryWithObjectsAndKeys:@"biaoqingdi",@"name",@"表情",@"desc", nil];
//    NSDictionary *image2 = @{@"name":@"bingli",@"desc":@"病例"};
//    NSDictionary *image3 = @{@"name":@"danteng",@"desc":@"蛋疼"};
//    NSDictionary *image4 = @{@"name":@"chiniupa",@"desc":@"吃牛排"};
//    NSDictionary *image5 = @{@"name":@"wangba",@"desc":@"王八"};
//    _imageArray = @[image1,image2,image3,image4,image5];
//    
//    [self.imageView setImage:[UIImage imageNamed:_imageArray[self.index][@"name"]]];
//    [self.descLabel setText:_imageArray[self.index][@"desc"]];
//}

/*
 *懒加载实现
 */
//- (NSArray *)imageArray
//{
//    if(_imageArray == nil){
//        NSDictionary *image1 = [NSDictionary dictionaryWithObjectsAndKeys:@"biaoqingdi",@"name",@"表情",@"desc", nil];
//        NSDictionary *image2 = @{@"name":@"bingli",@"desc":@"病例"};
//        NSDictionary *image3 = @{@"name":@"danteng",@"desc":@"蛋疼"};
//        NSDictionary *image4 = @{@"name":@"chiniupa",@"desc":@"吃牛排"};
//        NSDictionary *image5 = @{@"name":@"wangba",@"desc":@"王八"};
//        _imageArray = @[image1,image2,image3,image4,image5];
//
//    }
//    return _imageArray;
//    
//}

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
