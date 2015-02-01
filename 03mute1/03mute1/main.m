//
//  main.m
//  03mute1
//
//  Created by 王玥鹏 on 15/2/1.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MuteVolume.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MuteVolume *v;
        char buf[8];
        v = [[MuteVolume alloc] initWithMin:0 max:10 step:2];
        while (scanf("%s",buf) > 0) {
            switch (buf[0]) {
                case 'u':
                    [v up];
                    break;
                case 'd':
                    [v down];
                    break;
                case 'm':
                    [v mute];
                    break;
                case 'q':
                    return 0;
                default:
                    break;
            }
            printf("Volume=%d\n",[v value]);
        }
        
    }
    return 0;
}
