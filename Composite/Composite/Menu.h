//
//  Menu.h
//  Composite
//
//  Created by 陈栋楠 on 2017/1/12.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//  菜单

#import "MenuComponent.h"

@interface Menu : MenuComponent
@property(copy ,nonatomic)NSString *name;
@property(copy ,nonatomic)NSString *desc;
@property(strong,nonatomic)NSMutableArray<MenuComponent *>* menuComponentArr;
- (instancetype)initMenuItemWithName :(NSString *)name withDesc:(NSString *)desc;
@end
