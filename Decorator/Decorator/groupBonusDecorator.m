//
//  groupBonusDecorator.m
//  Decorator
//
//  Created by 陈栋楠 on 2016/12/15.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "groupBonusDecorator.h"

@implementation groupBonusDecorator
-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales{
    NSInteger salary = [self.components calculateSalary:monthSales sumSales:sumSales];
    NSInteger bonus = 100000 * 0.01;
    NSLog(@"团队奖金：%zd", bonus);
    return salary += bonus;
}
@end
