//
//  ProjectManagerHandler.m
//  HandleChainPattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "ProjectManagerHandler.h"

@implementation ProjectManagerHandler
-(void)handleRequest:(NSInteger)fee {
    if (fee <500) {
        NSLog(@"ProjectManager Approve");
    }
    else {
        if (self.successor) {
            NSLog(@"No permission, send to departmentManager");
        }
        [self.successor handleRequest:fee];
    }
}
@end
