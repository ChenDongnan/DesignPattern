//
//  FlowerFactory.h
//  FlyWeightPattern
//
//  Created by 陈栋楠 on 2017/1/11.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum {
    kAnemone,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia,
    kTotalNumberofFlowerTypes
    
}FlowerType;
@interface FlowerFactory : NSObject {
    @private NSMutableDictionary *flowerPool_;
}

- (UIImageView *)flowerViewWithType:(FlowerType)type;

@end
