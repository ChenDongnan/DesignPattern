
//
//  FlowerView.m
//  FlyWeightPattern
//
//  Created by 陈栋楠 on 2017/1/11.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "FlowerView.h"

@implementation FlowerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
 
*/

-(void)drawRect:(CGRect)rect {
    [self.image drawInRect:rect];
}

@end
