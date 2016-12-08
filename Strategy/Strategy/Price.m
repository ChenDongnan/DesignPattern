//
//  Price.m
//  Strategy
//
//  Created by 陈栋楠 on 2016/12/8.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "Price.h"

@implementation Price
-(instancetype)initWithStrategy:(id<strategyInterface>)strategy {
    if (self = [super init]) {
        self.strategy = strategy;
    }
    return self;
}

-(NSInteger)quotePrice:(NSInteger)goodsPrice {
    return [self.strategy calcPrice:goodsPrice];
}


@end
