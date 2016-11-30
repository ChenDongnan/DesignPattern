//
//  ViewController.m
//  Builder
//
//  Created by 陈栋楠 on 2016/11/30.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "ViewController.h"
#import "builderInterface.h"
#import "htmlBuilder.h"
#import "xmlBuilder.h"
#import "builderDirector.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    id<builderInterface> builder;
    NSString *data = @"生产者模式使用实践";
    builder = [[xmlBuilder alloc] initWithData:data];
    builderDirector *director = [[builderDirector alloc] initWithBuilder:builder];
    NSString *str = [director constructProduct];
    NSLog(@"%@", str);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
