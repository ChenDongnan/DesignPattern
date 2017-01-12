//
//  MenuItem.h
//  Composite
//
//  Created by 陈栋楠 on 2017/1/12.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//  菜品

#import "MenuComponent.h"

@interface MenuItem : MenuComponent
@property(copy ,nonatomic)NSString *name;
@property(copy ,nonatomic)NSString *desc;
@property(assign,nonatomic)NSInteger isVegetarain;
@property(assign,nonatomic)CGFloat price;

-(instancetype)initMenuItemWithName:(NSString*)name withDesc:(NSString*)desc withVegetarain:(NSInteger)isVege withPrice:(CGFloat)price;

@end
