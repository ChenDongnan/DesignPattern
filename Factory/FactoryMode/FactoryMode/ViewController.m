//
//  ViewController.m
//  FactoryMode
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Cpu.h"
#import "IntelFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Factory *factory = nil;
    factory = [[IntelFactory alloc] init];
    Cpu *cpu1 = [factory createCpuWithType:753];
    Cpu *cpu2 = [factory createCpuWithType:1179];
    [cpu1 installCpu];
    [cpu2 installCpu];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
