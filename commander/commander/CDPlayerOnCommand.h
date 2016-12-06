//
//  CDPlayerOnCommand.h
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "commandInterface.h"
#import "CDPlayer.h"

@interface CDPlayerOnCommand : NSObject<commandInterface>
@property(strong,nonatomic)CDPlayer *player;
-(instancetype)initWithPlayer:(CDPlayer *)player;
@end
