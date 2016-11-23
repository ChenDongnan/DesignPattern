//
//  Factory.h
//  FactoryMode
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cpu.h"
@interface Factory : NSObject
-(Cpu *)createCpuWithType : (NSInteger)type;
@end
