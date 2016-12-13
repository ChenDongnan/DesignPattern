//
//  noCoinStatus.h
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "statusInterface.h"
#import "gambleMachine.h"
@interface noCoinStatus : NSObject<statusInterface>
@property (nonatomic, strong) gambleMachine *machine;
-(instancetype)initWithMachine :(gambleMachine *)machine;

@end
