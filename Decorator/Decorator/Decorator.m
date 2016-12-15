//
//  Decorator.m
//  Decorator
//
//  Created by 陈栋楠 on 2016/12/15.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator
-(instancetype)initWithComponent:(component *)component {
    if (self = [super init]) {
        self.components = component;
    }
    return self;
}

-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales {
    return [self.components calculateSalary:monthSales sumSales:sumSales];
}
@end
