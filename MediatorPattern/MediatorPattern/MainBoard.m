//
//  MainBoard.m
//  MediatorPattern
//
//  Created by 陈栋楠 on 2016/11/29.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "MainBoard.h"
#import "Cpu.h"
#import "CDDriver.h"
#import "VGACard.h"

static MainBoard *instance = nil;
@implementation MainBoard

+(instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (instance == nil) {
            instance = [[self alloc] init];
        }
    });
    return instance;
}

- (void)handleData:(NSMutableString *)data dataSource:(id)source {
    if ([source isKindOfClass:[CDDriver class]]) {
        VGACard *vga = [[VGACard alloc] init];
        [vga executeData:data];
    }
    else if ([source isKindOfClass:[Cpu class]]) {
        Cpu *cpu = [[Cpu alloc] init];
        [cpu executeData:data];
    }
}
@end
