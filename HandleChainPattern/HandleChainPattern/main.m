//
//  main.m
//  HandleChainPattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractHandler.h"
#import "ProjectManagerHandler.h"
#import "DepartmentManagerHandler.h"
#import "GeneralManagerHandler.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AbstractHandler *handler1 = [[ProjectManagerHandler alloc] init];
        AbstractHandler *handler2 = [[DepartmentManagerHandler alloc] init];
        AbstractHandler *handler3 = [[GeneralManagerHandler alloc] init];
        handler1.successor = handler2;
        handler2.successor =handler3;
        [handler1 handleRequest:1000];
    }
    return 0;
}
