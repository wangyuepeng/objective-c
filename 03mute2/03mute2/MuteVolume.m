//
//  MuteVolume.m
//  03mute1
//
//  Created by 王玥鹏 on 15/2/1.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import "MuteVolume.h"

@implementation MuteVolume
-(id)initWithMin:(int)a max:(int)b step:(int)c
{
    self = [super initWithMin:a max:b step:c];
    if (self != nil) {
        muting = NO;
    }
    return self;
}

-(int)value
{
    return muting ? min : val;
}

-(id)mute
{
    muting = !muting;
    return self;
}
@end
