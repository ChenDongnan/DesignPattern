//
//  main.m
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gambleMachine.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        gambleMachine *machine = [[gambleMachine alloc] initWithGambleCount:2];
        [machine machineInsertCoin];
        [machine machineTurnCrank];
        [machine machineDispense];
        [machine machineEjectCoin];
    }
    return 0;
}
