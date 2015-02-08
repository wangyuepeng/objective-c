//
//  ViewController.h
//  Transform例子
//
//  Created by 王玥鹏 on 15/2/8.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,assign) UIButton *imageButton;

- (void)move:(id)button;
- (void)zoom:(id)button;
- (void)rotate:(id)button;

@end

