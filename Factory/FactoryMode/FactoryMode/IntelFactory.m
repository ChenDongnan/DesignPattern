//
//  IntelFactory.m
//  FactoryMode
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "IntelFactory.h"
#import "IntelCpu753.h"
#import "IntelCpu1179.h"
@implementation IntelFactory

-(Cpu *)createCpuWithType:(NSInteger)type {
    Cpu *cpu = nil;
    if (type == 753) {
        cpu = [[IntelCpu753 alloc] init];
    }
    if (type == 1179) {
        cpu = [[IntelCpu1179 alloc] init];
    }
    return cpu;
}
@end
