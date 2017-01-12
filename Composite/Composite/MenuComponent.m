//
//  MenuComponent.m
//  Composite
//
//  Created by 陈栋楠 on 2017/1/12.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "MenuComponent.h"

@implementation MenuComponent
-(void)add:(MenuComponent *)component{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(void)remove:(MenuComponent *)component{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}


-(MenuComponent *)getChild:(NSInteger)position{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(NSString *)getName{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(NSString *)getDescription{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(CGFloat)getPrice{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(BOOL)isVegetarian{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(void)print{
    NSString *reason = [NSString stringWithFormat:@"%@没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}
@end
