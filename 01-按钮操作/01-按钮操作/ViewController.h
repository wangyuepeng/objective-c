//
//  ViewController.h
//  01-按钮操作
//
//  Created by 王玥鹏 on 15/2/7.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *imageButton;
@property (weak, nonatomic) IBOutlet UIButton *topButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomButton;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;


- (IBAction)move:(UIButton *)sender;
- (IBAction)zoom:(UIButton *)button;



@end

