
//
//  builderDirector.m
//  Builder
//
//  Created by 陈栋楠 on 2016/11/30.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "builderDirector.h"

@interface builderDirector ()
@property (nonatomic, strong) id<builderInterface> builder;
@end

@implementation builderDirector
-(instancetype)initWithBuilder:(id)builder {
    if (self = [super init]) {
        self.builder = builder;
    }
    return self;
}

-(NSString *)constructProduct {
    [self.builder buildHeader];
    [self.builder buildBody];
    [self.builder buildFooter];
    return [self.builder getProduct];
}

@end
