//
//  CDPlayerOff.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "CDPlayerOff.h"

@implementation CDPlayerOff
-(instancetype)initWithPlayer:(CDPlayer *)player{
    if (self == [super init]) {
        self.player = player;
    }
    
    return self;
}
-(void)execute{
    [self.player CDOff];
    [self.player setVolume:0];
}

-(void)undo{
    [self.player CDOn];
    [self.player setVolume:11];
}
@end
