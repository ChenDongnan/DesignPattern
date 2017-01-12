//
//  ViewController.m
//  FlyWeightPattern
//
//  Created by 陈栋楠 on 2017/1/11.
//  Copyright © 2017年 陈栋楠. All rights reserved.
//

#import "ViewController.h"
#import "FlowerFactory.h"
#import "FlowerView.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import "FlyWeightView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    NSMutableArray *flowerList = [[NSMutableArray alloc] initWithCapacity:500];
    for (int i = 0; i<10000; ++i) {
        @autoreleasepool {
            FlowerType flowerType = arc4random() %kTotalNumberofFlowerTypes;
            UIImageView *flowerView = [factory flowerViewWithType:flowerType];
            CGRect screenBounds = [[UIScreen mainScreen] bounds];
            CGFloat x = (arc4random()%(NSInteger)screenBounds.size.width);
            CGFloat y = (arc4random() % (NSInteger)screenBounds.size.height);
            NSInteger minSize = 10;
            NSInteger maxSize = 50;
            CGFloat size = (arc4random() % (maxSize - minSize + 1)) + minSize;
            CGRect area = CGRectMake(x, y, size, size);
            
            NSValue *key = [NSValue valueWithCGRect:area];
            NSDictionary *dic = [NSDictionary dictionaryWithObject:flowerView forKey:key];
            [flowerList addObject:dic];
        }
    }
    
    FlyWeightView *view = [[FlyWeightView alloc] initWithFrame:self.view.bounds];
    view.flowerList = flowerList;
    self.view = view;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
