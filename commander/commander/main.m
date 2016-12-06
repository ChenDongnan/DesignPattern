//
//  main.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RemoteControl.h"
#import "RemoteLoader.h"
#import "CommandInterface.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSData *data = [[NSUserDefaults standardUserDefaults]objectForKey:@"serialCommands"];
        NSArray *commands = [NSKeyedUnarchiver unarchiveObjectWithData:data];//反序列化
        for (id<commandInterface> command in commands) {
            [command execute];
        }
        
        RemoteControl *remote = [[RemoteControl alloc]init];
        RemoteLoader *loader = [[RemoteLoader alloc]initWithRm:remote];
        //测试每个按钮的命令
        [remote onButtonClickWithSlot:0];
        [remote offButtonClickWithSlot:0];
        [remote onButtonClickWithSlot:1];
        [remote offButtonClickWithSlot:1];
        //测试宏命令
        [remote onButtonClickWithSlot:2];
        [remote offButtonClickWithSlot:2];
    }
    return 0;
}
