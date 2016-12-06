//
//  RemoteLoader.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "RemoteLoader.h"
#import "Light.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "CDPlayer.h"
#import "CDPlayerOnCommand.h"
#import "CDPlayerOff.h"
#import "macroCommand.h"
#import "RemoteControl.h"


@interface RemoteLoader ()
@property(strong,nonatomic)RemoteControl *RM;
@property(strong,nonatomic)NSArray *completedCommandsArr;
@end



@implementation RemoteLoader

- (instancetype)initWithRm:(RemoteControl*)remote
{
    self = [super init];
    if (self) {
        self.RM = remote;
        [self configSlotCommand];
    }
    return self;
}

-(void)configSlotCommand{
    Light *light = [Light new];
    LightOnCommand *lightOn = [[LightOnCommand alloc]initWithLight:light];
    LightOffCommand *LightOff = [[LightOffCommand alloc]initWithLight:light];
    [self.RM setCommandWithSlot:0 onCommand:lightOn offCommand:LightOff];
    
    CDPlayer *player = [CDPlayer new];
    CDPlayerOnCommand *playerOn = [[CDPlayerOnCommand alloc]initWithPlayer:player];
    CDPlayerOff *playerOff = [[CDPlayerOff alloc]initWithPlayer:player];
    [self.RM setCommandWithSlot:1 onCommand:playerOn offCommand:playerOff];
    
    NSArray *onCommandArr = [NSArray arrayWithObjects:lightOn,playerOn, nil];
    NSArray *offCommandArr = [NSArray arrayWithObjects:LightOff,playerOff, nil];
    macroCommand *onMacro = [[macroCommand alloc]initWithCommands:onCommandArr];
    macroCommand *offMacro = [[macroCommand alloc]initWithCommands:offCommandArr];
    [self.RM setCommandWithSlot:2 onCommand:onMacro offCommand:offMacro];
    
    //序列化命令对象，然后保存
    self.completedCommandsArr = @[lightOn,LightOff,playerOn,playerOff,onMacro,offMacro];
    NSData  *data1 = [NSKeyedArchiver archivedDataWithRootObject:self.completedCommandsArr];
    [[NSUserDefaults standardUserDefaults]setObject:data1 forKey:@"serialCommands"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}

@end
