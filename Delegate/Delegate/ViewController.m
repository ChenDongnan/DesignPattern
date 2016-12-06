//
//  ViewController.m
//  Delegate
//
//  Created by 陈栋楠 on 2016/12/1.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "ViewController.h"
#import "proxy.h"
#import "realSubject.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    proxy *pro = [[proxy alloc]initWithRealSubject:[realSubject new]];
    //先获取简单的数据，此时只有name和age字段
    [pro getSimpleInfo];
    //获取完整的数据，包括所有信息
    [pro getCompleteInfo];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
