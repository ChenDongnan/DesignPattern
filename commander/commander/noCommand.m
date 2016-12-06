//
//  noCommand.m
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "noCommand.h"

@implementation noCommand
-(void)execute{
    NSLog(@"该插槽没有安装命令");
}

-(void)undo{
    NSLog(@"命令被撤销");
}
@end
