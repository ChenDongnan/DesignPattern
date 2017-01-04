//
//  abstractMessage.h
//  bridgePattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//  抽象消息

#import <Foundation/Foundation.h>
#import "messageImplement.h"
@interface abstractMessage : NSObject
@property (nonatomic, strong) id<messageImplement> messageImplement;


- (void)send:(NSMutableString *)message;
- (instancetype)initWithImplement:(id<messageImplement>)implement;


@end
