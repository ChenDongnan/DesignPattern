//
//  LightOnCommand.h
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "commandInterface.h"
#import "Light.h"
@interface LightOnCommand : NSObject<commandInterface>
@property (nonatomic, strong) Light *light;
-(instancetype)initWithLight:(Light *)light;
@end
