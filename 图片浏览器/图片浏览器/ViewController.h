//
//  ViewController.h
//  图片浏览器
//
//  Created by 王玥鹏 on 15/2/10.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,strong) UILabel *noLabel;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIButton *leftButton;
@property (nonatomic,strong) UIButton *rightButton;
@property (nonatomic,strong) UILabel *descLabel;
@property (nonatomic,assign) int index;
@property (nonatomic,strong) NSArray *imageArray;

@end

