//
//  gambleMachine.h
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "statusInterface.h"
@interface gambleMachine : NSObject

- (void)setStatus :(id<statusInterface>)status;
@property (nonatomic, strong) id<statusInterface> status;
@property (nonatomic, strong) id<statusInterface> noCoinstatus;
@property (nonatomic, strong) id<statusInterface> soldOutstatus;
@property (nonatomic, strong) id<statusInterface> hasCoinstatus;
@property (nonatomic, strong) id<statusInterface> soldingstatus;
@property (nonatomic, assign) NSInteger count;


- (instancetype)initWithGambleCount:(NSInteger)count;
- (void)machineInsertCoin;
- (void)machineEjectCoin;
- (void)machineTurnCrank;
- (void)machineDispense;

@end
