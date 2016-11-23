//
//  SqlServerFactory.m
//  抽象工厂
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "SqlServerFactory.h"
#import "SqlServerUser.h"
#import "SqlServerDepartment.h"
@implementation SqlServerFactory
-(IUser *)createUser {
    return [[SqlServerUser alloc] init];
}

-(IDepartment *)createDepartment {
    return [[SqlServerDepartment alloc] init];
}



@end
