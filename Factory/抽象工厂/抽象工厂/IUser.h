//
//  IUser.h
//  抽象工厂
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IUser : NSObject
- (void)insert:(NSString *)user;
- (void)getUser;
@end
