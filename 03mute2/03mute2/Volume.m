//
//  Volume.m
//  02volume
//
//  Created by 王玥鹏 on 15/1/31.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import "Volume.h"

@implementation Volume
-(id)initWithMin:(int)a max:(int)b step:(int)c
{
    self = [super init];
    if(nil != self){
        val = a;
        min = a;
        max = b;
        step = c;
    }
    return self;
}

-(int)value
{
    return val;
}

-(id)up
{
    if ((val += step) > max) {
        val = max;
    }
    return self;
}

-(id)down
{
    if((val -= step) < min){
        val = min;
    }
    return self;
}
@end
