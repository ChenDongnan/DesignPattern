//
//  FlyWeightView.m
//  FlyWeightPattern
//
//  Created by 陈栋楠 on 2017/1/11.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "FlyWeightView.h"
#import "FlowerView.h"
@implementation FlyWeightView

extern NSString *FlowerObjectKey, *FlowerLocationKey;

-(void)drawRect:(CGRect)rect {
    for (NSDictionary *dic in self.flowerList) {
        NSValue *key = (NSValue *)[dic allKeys][0];
        FlowerView *flowerView = (FlowerView *)[dic allValues][0];
        CGRect area = [key CGRectValue];
        [flowerView drawRect:area];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


@end
