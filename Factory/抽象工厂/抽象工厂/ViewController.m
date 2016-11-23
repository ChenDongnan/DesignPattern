//
//  ViewController.m
//  抽象工厂
//
//  Created by 陈栋楠 on 2016/11/23.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "ViewController.h"
#import "IFactory.h"
#import "IUser.h"
#import "IDepartment.h"
#import "SqlServerDepartment.h"
#import "SqlServerUser.h"
#import "SqlServerFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    id<IFactory>DBFactory = [[SqlServerFactory alloc] init];
    IUser *user = [DBFactory createUser];
    IDepartment *department = [DBFactory createDepartment];
    
    [user insert:@"张三"];
    [user getUser];
    [department insert:@"FinanaceDepartment"];
    [department getDepartment];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
