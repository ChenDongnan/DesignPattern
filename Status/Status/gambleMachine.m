//
//  gambleMachine.m
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "gambleMachine.h"
#import "noCoinStatus.h"
#import "hasCoinStatus.h"
#import "soldingStatus.h"
#import "soldoutStatus.h"
@implementation gambleMachine
-(instancetype)initWithGambleCount:(NSInteger)count {
    if (self = [super init]) {
        self.count = count;
        self.noCoinstatus = [[noCoinStatus alloc] initWithMachine:self];
        self.hasCoinstatus = [[hasCoinStatus alloc] initWithMachine:self];
        self.soldOutstatus = [[soldoutStatus alloc] initWithMachine:self];
        self.soldingstatus = [[soldingStatus alloc] initWithMachine:self];
        
        if (self.count > 0) {
            self.status = self.noCoinstatus;
        }
    }
    return self;
}

-(void)machineInsertCoin{
    [self.status insertCoin];
}

-(void)machineEjectCoin{
    [self.status ejectCoin];
}


-(void)machineTurnCrank{
    [self.status turnCrank];
}

-(void)machineDispense{
    [self.status dispense];
}


@end
