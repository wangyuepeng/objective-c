//
//  ViewController.m
//  01-按钮操作
//
//  Created by 王玥鹏 on 15/2/7.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    kMoveingDirTop = 11,
    kMoveingDirBottom,
    kMoveingDirLeft,
    kMoveingDirRight
}kMoveingDir;

#define kMoveingDelta 20

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

- (IBAction)move:(UIButton *)sender {
    CGRect imageButtonFrame = self.imageButton.frame;
    switch (sender.tag) {
        case kMoveingDirTop:
            imageButtonFrame.origin.y -= kMoveingDelta;
            break;
        case kMoveingDirBottom:
            imageButtonFrame.origin.y += kMoveingDelta;
            break;
        case kMoveingDirLeft:
            imageButtonFrame.origin.x -= kMoveingDelta;
            break;
        case kMoveingDirRight:
            imageButtonFrame.origin.x += kMoveingDelta;
            break;
        default:
            break;
    }
    self.imageButton.frame = imageButtonFrame;
}

- (IBAction)zoom:(UIButton *)button
{
    CGRect imageButtonBounds = self.imageButton.bounds;
    if (button.tag) {
        imageButtonBounds.size.height -= 100;
        imageButtonBounds.size.width -= 100;
    }else{
        imageButtonBounds.size.height += 100;
        imageButtonBounds.size.width += 100;
    }
    //开始动画效果
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3.0];
    //self.imageButton.alpha = 0;
    self.imageButton.bounds = imageButtonBounds;
    
    [UIView commitAnimations];
}
@end
