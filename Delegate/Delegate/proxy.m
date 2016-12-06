//
//  proxy.m
//  Delegate
//
//  Created by 陈栋楠 on 2016/12/1.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "proxy.h"

@interface proxy ()
@property(strong,nonatomic)realSubject *realSubject;
@property(assign,nonatomic)BOOL isReload;


@end

@implementation proxy
-(instancetype)initWithRealSubject:(realSubject *)subject {
    if (self = [super init]) {
        self.realSubject = subject;
    }
    return self;
}

-(NSInteger)getAge {
    NSLog(@"年龄：%ld",[self.realSubject getAge]);
    return [self.realSubject getAge];
}

-(NSString *)getSex {
    NSLog(@"性别：%@",[self.realSubject getSex]);
    return [self.realSubject getSex];
}

-(NSString *)getName {
    NSLog(@"姓名：%@",[self.realSubject getName]);
    return [self.realSubject getName];
}

-(NSString *)getAddress {
    if (!self.isReload) {
        [self reloadDB];
    }
    NSLog(@"地址：%@",[self.realSubject getAddress]);
    return [self.realSubject getAddress];

}

-(NSString *)getCountry{
    if (!self.isReload)
    {
        [self reloadDB];
    }
    
    NSLog(@"国家：%@",[self.realSubject getCountry]);
    return  [self.realSubject getCountry];
    
}



- (void)reloadDB {
    self.isReload = YES;
    self.realSubject.age = 19;
    self.realSubject.address = @"泰坦星球";
    self.realSubject.country =  @"赛亚王国";
}

-(void)getSimpleInfo{
    NSLog(@"查询数据库获取简单数据....");
    self.realSubject.name = @"张三";
    self.realSubject.sex = @"男";
    [self getName];
    [self getSex];
}

-(void)getCompleteInfo{
    NSLog(@"重新查询数据库获取全部数据....");
    [self getName];
    [self getSex];
    [self getCountry];
    [self getAddress];
    [self getAge];
}



@end
