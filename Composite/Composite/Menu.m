//
//  Menu.m
//  Composite
//
//  Created by 陈栋楠 on 2017/1/12.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "Menu.h"

@implementation Menu
-(instancetype)initMenuItemWithName:(NSString *)name withDesc:(NSString *)desc {
    if (self = [super init]) {
        self.name = name;
        self.desc = desc;
        self.menuComponentArr = [NSMutableArray array];
    }
    return self;
}

-(NSString *)getName {
    return self.name;
}

-(void)add:(MenuComponent *)component {
    [self.menuComponentArr addObject:component];
}

-(void)remove:(MenuComponent *)component {
    [self.menuComponentArr enumerateObjectsUsingBlock:^(MenuComponent * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj == component) {
            [self.menuComponentArr removeObject:component];
        }
        else {
            if ([obj isKindOfClass:[Menu class]]) {
                if ([((Menu *)obj).menuComponentArr containsObject:component]) {
                    [obj remove:component];
                }
            }
        }
    }];
}

-(MenuComponent *)getChild:(NSInteger)position {
    return self.menuComponentArr[position];
}

-(void)print {
    NSLog(@"菜单名称 :%@ | 菜单描述:%@",self.name,self.desc);
    if (self.menuComponentArr.count) {
        for (MenuComponent *component in self.menuComponentArr) {
            [component print];
        }
    }
}
@end
