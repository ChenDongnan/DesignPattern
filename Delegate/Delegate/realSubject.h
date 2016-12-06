//
//  realSubject.h
//  Delegate
//
//  Created by 陈栋楠 on 2016/12/1.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "subject.h"



@interface realSubject : NSObject<subject>
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)NSInteger age;
@property(nonatomic,strong)NSString *sex;
@property(nonatomic,strong)NSString *address;
@property(nonatomic,strong)NSString *country;

@end
