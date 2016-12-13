


//
//  hasCoinStatus.m
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "hasCoinStatus.h"

@implementation hasCoinStatus
-(instancetype)initWithMachine:(gambleMachine *)machine {
    if (self = [super init]) {
        self.machine = machine;
    }
    return self;
}


-(void)insertCoin {
    NSLog(@"already inserted");
}

-(void)ejectCoin {
    NSLog(@"coin out");
    self.machine.status = self.machine.noCoinstatus;
}

-(void)turnCrank {
    NSLog(@"in processing");
    self.machine.status = self.machine.soldingstatus;
}

-(void)dispense {
    NSLog(@"please choose trunCrank first");
}


@end
