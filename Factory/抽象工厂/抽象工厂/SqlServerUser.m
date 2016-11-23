//
//  SqlServerUser.m
//  抽象工厂
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "SqlServerUser.h"

@implementation SqlServerUser
-(void)insert:(NSString *)user {
    NSLog(@"向sqlserver数据库插入用户 :%@",user);
}

- (void)getUser {
    NSLog(@"从SqlServer数据库获取到一条用户数据");
}
@end
