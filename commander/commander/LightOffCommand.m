//
//  LightOffCommand.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "LightOffCommand.h"

@implementation LightOffCommand
-(instancetype)initWithLight:(Light *)light{
    if (self == [super init]) {
        self.light = light;
    }
    
    return self;
}
-(void)execute{
    [self.light lightOff];
}

-(void)undo{
    [self.light lightOn];
}

@end
