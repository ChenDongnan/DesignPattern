//
//  GCDSingleton.m
//  Singleton
//
//  Created by 陈栋楠 on 2017/1/10.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "GCDSingleton.h"

@implementation GCDSingleton


static id _instance;

+(instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance  = [super allocWithZone:zone];
    });
    return _instance;
}

+(instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}

- (id)mutableCopyWithZone :(NSZone *)zone {
    return _instance;
}
@end
