//
//  ViewController.h
//  01.加法计算器
//
//  Created by 王玥鹏 on 15/2/3.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *num1;
@property (nonatomic,weak) IBOutlet UITextField *num2;
@property (nonatomic,weak) IBOutlet UILabel *result;
- (IBAction)compute;

@end

