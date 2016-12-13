//
//  soldoutStatus.m
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "soldoutStatus.h"

@implementation soldoutStatus
-(instancetype)initWithMachine:(gambleMachine *)machine {
    if (self = [super init]) {
        self.machine = machine;
    }
    return self;
}

-(void)insertCoin {
    NSLog(@"sold out");
}

-(void)ejectCoin{
    NSLog(@"drawback soon");
    
}


-(void)turnCrank{
    NSLog(@"sold out");
    
}
-(void)dispense{
    NSLog(@"soldout");
}
@end
