//
//  IUser.m
//  抽象工厂
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "IUser.h"

@implementation IUser
-(void)insert:(NSString *)user {
    @throw [NSException exceptionWithName:@"继承错误" reason:@"子类没有实现父类方法" userInfo:nil];
}

-(void)getUser {
    @throw [NSException exceptionWithName:@"继承错误" reason:@"子类没有实现父类方法" userInfo:nil];
}
@end
