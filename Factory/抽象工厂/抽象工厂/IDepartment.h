//
//  IDepartment.h
//  抽象工厂
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDepartment : NSObject
- (void)insert:(NSString *)Department;
- (void)getDepartment;
@end
