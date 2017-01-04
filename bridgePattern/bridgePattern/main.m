//
//  main.m
//  bridgePattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "messageImplement.h"
#import "abstractMessage.h"
#import "commonMessage.h"
#import "messagSMS.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id<messageImplement>messageImplement = [messagSMS new];
        abstractMessage *message = [[commonMessage alloc]initWithImplement:messageImplement];
        NSMutableString *mStr = [[NSMutableString alloc]initWithString:@"abcd"];
        [message send:mStr];
    }
    return 0;
}
