//
//  monthBonusDecorator.m
//  Decorator
//
//  Created by 陈栋楠 on 2016/12/15.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "monthBonusDecorator.h"

@implementation monthBonusDecorator
-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales {
    NSInteger salary = [self.components calculateSalary:monthSales sumSales:sumSales];
    NSInteger bonus = monthSales * 0.03;
    NSLog(@"当月销售奖金：%zd", bonus);
    return salary += bonus;
}
@end
