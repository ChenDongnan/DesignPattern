//
//  Cpu.m
//  FactoryMode
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "Cpu.h"

@implementation Cpu
- (void)installCpu {
    @throw [NSException exceptionWithName:@"继承错误" reason:@"子类必须改写父类方法" userInfo:nil];
}
@end
