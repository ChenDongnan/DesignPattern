//
//  soldingStatus.m
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "soldingStatus.h"

@implementation soldingStatus
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
    NSLog(@"sorry, can't drawback");
}

-(void)turnCrank {
    NSLog(@"no more candies even if you broke the crank");
}

-(void)dispense {
    if (self.machine.count >0) {
        self.machine.count --;
        self.machine.status = self.machine.noCoinstatus;
        NSLog(@"candy sold");
        NSLog(@"candy left @%zd",self.machine.count);
    }
    else {
        NSLog(@"sorry, sold out");
        self.machine.status = self.machine.soldOutstatus;
    }
}

@end
