//
//  subject.h
//  Delegate
//
//  Created by 陈栋楠 on 2016/12/1.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol subject <NSObject>

-(NSString *)getName;
-(NSInteger)getAge;
-(NSString *)getSex;
-(NSString *)getAddress;
-(NSString *)getCountry;

//首次加载获取简单信息：name和sex
-(void)getSimpleInfo;
//当用户点击了某个人，去数据库获取该人的全部信息
-(void)getCompleteInfo;

@end

@interface subject : NSObject

@end
