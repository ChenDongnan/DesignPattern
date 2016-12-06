//
//  RemoteControl.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "RemoteControl.h"
#import "noCommand.h"
#import "commandInterface.h"

@interface RemoteControl()
@property(nonatomic,strong)NSMutableArray<id<commandInterface>> *onCommandArr;
@property(nonatomic,strong)NSMutableArray<id<commandInterface>> *offCommandArr;
@property(nonatomic,strong)id<commandInterface> undoCommand;
@property(nonatomic,strong)NSMutableArray <id<commandInterface>> *completeCommandsArr;
@end


@implementation RemoteControl
-(void)onButtonClickWithSlot:(NSInteger)slot{
    [self.onCommandArr[slot] execute];
    self.undoCommand = self.onCommandArr[slot];
    [self.completeCommandsArr addObject:self.onCommandArr[slot]];
    
}

-(void)offButtonClickWithSlot:(NSInteger)slot{
    [self.offCommandArr[slot] execute];
    self.undoCommand = self.offCommandArr[slot];
    [self.completeCommandsArr addObject:self.offCommandArr[slot]];
}

//撤销最后一步操作
-(void)undoButtonClick{
    [self.undoCommand undo];
}

//撤销全部操作
-(void)undoAllOperation{
    for (id<commandInterface>command in self.completeCommandsArr) {
        [command undo];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.onCommandArr = [NSMutableArray array];
        self.offCommandArr = [NSMutableArray array];
        self.completeCommandsArr  = [NSMutableArray array];
        id<commandInterface>noCommands = [[noCommand alloc]init];
        for (int i = 0; i< 4; i++) {
            self.offCommandArr[i] = noCommands;
            self.onCommandArr[i] =  noCommands;
        }
        self.undoCommand = [[noCommand alloc]init];
    }
    return self;
}


-(void)setCommandWithSlot:(NSInteger )slot onCommand:(id<commandInterface>)onCommand offCommand:(id<commandInterface>)offCommand
{
    self.onCommandArr[slot] = onCommand;
    self.offCommandArr[slot] = offCommand;
    
}
@end
