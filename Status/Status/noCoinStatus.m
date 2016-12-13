
//
//  noCoinStatus.m
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "noCoinStatus.h"

@implementation noCoinStatus
-(instancetype)initWithMachine:(gambleMachine *)machine {
    if (self = [super init]) {
        self.machine = machine;
    }
    return self;
}

-(void)insertCoin {
    NSLog(@"insert coin");
    self.machine.status = self.machine.hasCoinstatus;
}

- (void)ejectCoin {
    NSLog(@"no coin inserted, ejection denied");
}

-(void)turnCrank {
    NSLog(@"no coin inseted, pls insert coin first");
}

-(void)dispense {
    NSLog(@"Insert coin pls");
}

@end
