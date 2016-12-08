//
//  Price.h
//  Strategy
//
//  Created by 陈栋楠 on 2016/12/8.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "strategy.h"
@interface Price : NSObject
@property (nonatomic, strong) id<strategyInterface> strategy;

- (instancetype)initWithStrategy:(id<strategyInterface>)strategy;
- (NSInteger)quotePrice:(NSInteger)goodsPrice;

@end
