//
//  SqlServerDepartment.m
//  抽象工厂
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "SqlServerDepartment.h"

@implementation SqlServerDepartment
-(void)insert:(NSString *)Department {
    NSLog(@"向SqlServer数据库插入一个部门%@",Department);
}

-(void)getDepartment {
    NSLog(@"从SQLServer数据库获取一个部门");
}
@end
