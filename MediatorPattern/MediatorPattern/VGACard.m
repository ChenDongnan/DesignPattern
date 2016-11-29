//
//  VGACard.m
//  MediatorPattern
//
//  Created by 陈栋楠 on 2016/11/29.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "VGACard.h"

@implementation VGACard
-(void)executeData:(NSMutableString *)data {
    [data appendString:@"+经过显卡处理"];
    NSLog(@"开始播放视频：%@",data);
    
}
@end
