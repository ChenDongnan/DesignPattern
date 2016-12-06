//
//  macroCommand.h
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "commandInterface.h"
@interface macroCommand : NSObject<commandInterface>
@property(strong,nonatomic)NSArray<id<commandInterface>> *commandsArr;
- (instancetype)initWithCommands:(NSArray<id<commandInterface>>*)commands;

@end
