//
//  ViewController.m
//  MediatorPattern
//
//  Created by 陈栋楠 on 2016/11/29.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "ViewController.h"
#import "CDDriver.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CDDriver *cd = [[CDDriver alloc] init];
    [cd readCD];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
