
//
//  abstractMessage.m
//  bridgePattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "abstractMessage.h"

@implementation abstractMessage


-(instancetype)initWithImplement:(id<messageImplement>)implement {
    if (self = [super init]) {
        self.messageImplement = implement;
    }
    return self;
}

-(void)send:(NSMutableString *)message {
    
}
@end
