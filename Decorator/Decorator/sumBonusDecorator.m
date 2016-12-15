//
//  sumBonusDecorator.m
//  Decorator
//
//  Created by 陈栋楠 on 2016/12/15.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "sumBonusDecorator.h"

@implementation sumBonusDecorator
-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales{
    NSInteger salary = [self.components calculateSalary:monthSales sumSales:sumSales];
    NSInteger bonus = sumSales * 0.01;
    NSLog(@"累积销售奖金：%zd", bonus);
    return salary += bonus;
}
@end
