//
//  CDPlayer.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "CDPlayer.h"

@implementation CDPlayer
-(void)CDOn{
    NSLog(@"CD播放器被打开");
}

-(void)CDOff{
    NSLog(@"CD播放器被关闭");
}

-(void)setVolume:(NSInteger)volume{
    NSLog(@"设置声音大小为：%zd",volume);
}

@end
