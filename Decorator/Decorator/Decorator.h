//
//  Decorator.h
//  Decorator
//
//  Created by 陈栋楠 on 2016/12/15.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "component.h"

@interface Decorator : component
@property (nonatomic, strong) component *components;
- (instancetype)initWithComponent:(component *)component;
@end
