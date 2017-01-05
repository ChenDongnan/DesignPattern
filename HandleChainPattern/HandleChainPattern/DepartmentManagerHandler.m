//
//  DepartmentManagerHandler.m
//  HandleChainPattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "DepartmentManagerHandler.h"

@implementation DepartmentManagerHandler
-(void)handleRequest:(NSInteger)fee {
    if (fee <1000) {
        NSLog(@"DepartmentManager Approved");
    }
    else {
        if (self.successor) {
            NSLog(@"No permission,send to generalManager");
            [self.successor handleRequest:fee];
        }
    }
}
@end
