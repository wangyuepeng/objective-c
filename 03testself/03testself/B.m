//
//  B.m
//  03testself
//
//  Created by 王玥鹏 on 15/2/1.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import "B.h"

@implementation B
-(void)method2
{
    NSLog(@"method2 of Class B\n");
    NSLog(@"self ----> ");
    [self method1];
    NSLog(@"super -----> ");
    [super method2];
}
@end
