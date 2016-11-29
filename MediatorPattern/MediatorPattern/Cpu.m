//
//  Cpu.m
//  MediatorPattern
//
//  Created by 陈栋楠 on 2016/11/29.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "Cpu.h"

@implementation Cpu
-(void)executeData:(NSMutableString *)data {
    [data appendString:@"+经过cpu处理"];
    
}
@end
