//
//  main.m
//  Strategy
//
//  Created by 陈栋楠 on 2016/12/8.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Price.h"
#import "strategy.h"
#import "NationalDayStrategy.h"
#import "discountStrategy.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id<strategyInterface>strategy = [[discountStrategy alloc] init];
        Price *quote = [[Price alloc] initWithStrategy:strategy];
        NSInteger quotePrice = [quote quotePrice:1000];
        NSLog(@"%ld",(long)quotePrice);
    }
    return 0;
}
