//
//  main.m
//  02volume
//
//  Created by 王玥鹏 on 15/1/31.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Volume.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Volume *v,*w;
        v = [[Volume alloc] initWithMin:0 max:10 step:3];
        w = [[Volume alloc] initWithMin:0 max:8 step:2];
        [v up];
        NSLog(@"%d %d",[v value],[w value]);
        [v up];
        [w up];
        NSLog(@"%d %d",[v value],[w value]);
        [v down];
        [w down];
        NSLog(@"%d %d",[v value],[v value]);
    }
    return 0;
}