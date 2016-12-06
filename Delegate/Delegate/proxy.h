//
//  proxy.h
//  Delegate
//
//  Created by 陈栋楠 on 2016/12/1.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "subject.h"
#import "realSubject.h"
@interface proxy : NSObject<subject>
- (instancetype)initWithRealSubject:(realSubject *)subject;

@end
