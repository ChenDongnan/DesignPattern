//
//  macroCommand.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "macroCommand.h"


@implementation macroCommand
- (instancetype)initWithCommands:(NSArray<id<commandInterface>>*)commands
{
    self = [super init];
    if (self) {
        self.commandsArr = commands;
    }
    return self;
}

-(void)execute{
    for (id<commandInterface>command in self.commandsArr) {
        [command execute];
    }
}

//和单个命令的撤销操作类似，就不在演示了
-(void)undo{
    NSLog(@"宏命令懒得写撤销操作");
}

@end
