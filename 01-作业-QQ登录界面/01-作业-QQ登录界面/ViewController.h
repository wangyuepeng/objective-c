//
//  ViewController.h
//  01-作业-QQ登录界面
//
//  Created by 王玥鹏 on 15/2/5.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *qqNumber;
@property (nonatomic,weak) IBOutlet UITextField *pwd;

- (IBAction)login;
@end

