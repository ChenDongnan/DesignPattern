//
//  NationalDayStrategy.m
//  Strategy
//
//  Created by 陈栋楠 on 2016/12/8.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "NationalDayStrategy.h"

@implementation NationalDayStrategy

-(NSInteger)calcPrice:(NSInteger)goodsPrice {
    return goodsPrice * 0.5 -12;
}
@end
