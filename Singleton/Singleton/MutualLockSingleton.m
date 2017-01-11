//
//  MutualLockSingleton.m
//  Singleton
//
//  Created by 陈栋楠 on 2017/1/10.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "MutualLockSingleton.h"

@implementation MutualLockSingleton
static id _instance;
+(instancetype)allocWithZone:(struct _NSZone *)zone {
    @synchronized (self) {
        if (_instance == nil) {
            _instance = [super allocWithZone:zone];
        }
    }
    return _instance;
}

+(instancetype)sharedInstance {
    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }
    return _instance;
}

-(instancetype)copyWithZone:(NSZone *)zone {
    return _instance;
}

-(instancetype)mutableCopyWithZone :(NSZone *)zone {
    return _instance;
}
@end
