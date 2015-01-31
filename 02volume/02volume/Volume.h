//
//  Volume.h
//  02volume
//
//  Created by 王玥鹏 on 15/1/31.
//  Copyright (c) 2015年 wang yuepeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Volume : NSObject
{
    int val;
    int min,max,step;
}

-(id)initWithMin:(int)a max:(int)b step:(int)c;
-(int)value;
-(id)up;
-(id)down;

@end
