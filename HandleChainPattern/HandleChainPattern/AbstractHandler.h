//
//  AbstractHandler.h
//  HandleChainPattern
//
//  Created by 陈栋楠 on 2017/1/4.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractHandler : NSObject
@property (nonatomic, strong) AbstractHandler *successor;

- (void)handleRequest:(NSInteger)fee;
@end
