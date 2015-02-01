//
//  main.m
//  03testself
//
//  Created by 王玥鹏 on 15/2/1.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"
#import "C.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id x = [[B alloc] init];
        id y = [[C alloc] init];
        NSLog(@"---- instance of B ----\n");
        [x method1];
        [x method2];
        NSLog(@"---- instance of C ----\n");
        [y method1];
        [y method2];
        return 0;
    }
    return 0;
}
