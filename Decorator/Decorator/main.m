//
//  main.m
//  Decorator
//
//  Created by 陈栋楠 on 2016/12/15.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "component.h"
#import "Decorator.h"
#import "concreteComponent.h"
#import "monthBonusDecorator.h"
#import "sumBonusDecorator.h"
#import "groupBonusDecorator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        component *c1 = [concreteComponent new];
        
        //装饰器
        Decorator *d1 = [[monthBonusDecorator alloc] initWithComponent:c1];
        Decorator *d2 = [[sumBonusDecorator alloc] initWithComponent:d1];
        NSInteger salary1 = [d2 calculateSalary:10000 sumSales:12212];
        NSLog(@"\n奖金组合方式：当月销售奖金 + 累积销售奖金 \n 总工资 = %zd", salary1);
        
        NSLog(@"\n=============================================================================");
        
        Decorator *d3 = [[monthBonusDecorator alloc]initWithComponent:c1];
        Decorator *d4 = [[sumBonusDecorator alloc]initWithComponent:d3];
        Decorator *d5 = [[groupBonusDecorator alloc]initWithComponent:d4];
        NSInteger salary2 = [d5 calculateSalary:12100 sumSales:12232];
        NSLog(@"\n奖金组合方式：当月销售奖金 + 累积销售奖金 + 团队奖金 \n 总工资 = %zd", salary2);
        
        
        NSLog(@"\n=============================================================================");
        
        Decorator *d6 = [[monthBonusDecorator alloc]initWithComponent:c1];
        Decorator *d7 = [[groupBonusDecorator alloc]initWithComponent:d6];
        NSInteger salary3 = [d7 calculateSalary:23111 sumSales:231111];
        NSLog(@"\n奖金组合方式：当月销售奖金 + 团队奖金 \n 总工资 = %zd", salary3);
        
    }
    return 0;
}
