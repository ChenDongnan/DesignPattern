//
//  MenuComponent.h
//  Composite
//
//  Created by 陈栋楠 on 2017/1/12.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MenuComponent : NSObject
-(void)add:(MenuComponent *)component;
-(void)remove:(MenuComponent *)component;
-(MenuComponent *)getChild:(NSInteger)position;
-(NSString *)getName;
-(NSString *)getDescription;
-(CGFloat)getPrice;
-(BOOL)isVegetarian;
-(void)print;

@end
