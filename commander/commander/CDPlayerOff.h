//
//  CDPlayerOff.h
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDPlayer.h"
#import "commandInterface.h"

@interface CDPlayerOff : NSObject<commandInterface>
@property(strong,nonatomic)CDPlayer *player;
-(instancetype)initWithPlayer:(CDPlayer *)player;
@end
