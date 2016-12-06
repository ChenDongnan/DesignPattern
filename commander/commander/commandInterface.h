//
//  commandInterface.h
//  commander
//
//  Created by 陈栋楠 on 2016/12/6.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import<Foundation/Foundation.h>

@protocol commandInterface <NSObject>

- (void)execute;
- (void)undo;
@end
