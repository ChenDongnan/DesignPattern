//
//  strategy.h
//  Strategy
//
//  Created by 陈栋楠 on 2016/12/8.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol strategyInterface <NSObject>

-(NSInteger)calcPrice :(NSInteger)goodsPrice;

@end

