//
//  CDDriver.m
//  MediatorPattern
//
//  Created by 陈栋楠 on 2016/11/29.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "CDDriver.h"
#import "MainBoard.h"
@implementation CDDriver
- (void)readCD {
    NSString *data = @"海贼王";
    NSMutableString *mStr = [[NSMutableString alloc] initWithString:data];
    [[MainBoard shareInstance] handleData:mStr dataSource:self];
}
@end
