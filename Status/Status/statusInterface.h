//
//  statusInterface.h
//  Status
//
//  Created by 陈栋楠 on 2016/12/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol statusInterface <NSObject>
@required
/** 投硬币 */
- (void)insertCoin;
/** 吐出硬币 */
- (void)ejectCoin;
/** 转手柄 */
- (void)turnCrank;
/** 售出物品 */
- (void)dispense;



@end
