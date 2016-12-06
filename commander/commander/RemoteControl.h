//
//  RemoteControl.h
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "commandInterface.h"
@class RemoteControl;
@interface RemoteControl : NSObject
@property(strong,nonatomic)id<commandInterface> slot;

-(void)onButtonClickWithSlot:(NSInteger)slot;
-(void)offButtonClickWithSlot:(NSInteger)slot;
-(void)undoButtonClick;
-(void)undoAllOperation;

-(void)setCommandWithSlot:(NSInteger )slot onCommand:(id<commandInterface>)onCommand offCommand:(id<commandInterface>)offCommand;

@end
