//
//  Factory.m
//  FactoryMode
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "Factory.h"
#import "Cpu.h"
@implementation Factory
-(Cpu *)createCpuWithType : (NSInteger)type {
//    @throw [NSException exceptionWithName:@"继承错误" reason:@"子类必须重写该方法" userInfo:nil];
    NSLog(@"aaaaa");
    return nil;
}
@end
