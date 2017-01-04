//
//  commonMessage.m
//  bridgePattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "commonMessage.h"

@implementation commonMessage

-(void)send:(NSMutableString *)message {
    [message insertString:@"common message" atIndex:0];
    [self.messageImplement sendMessage:message];
}
@end
