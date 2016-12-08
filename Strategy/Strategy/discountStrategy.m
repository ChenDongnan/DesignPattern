//
//  discountStrategy.m
//  Strategy
//
//  Created by 陈栋楠 on 2016/12/8.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "discountStrategy.h"

@implementation discountStrategy
-(NSInteger)calcPrice:(NSInteger)goodsPrice {
    return goodsPrice * 0.8;
}
@end
