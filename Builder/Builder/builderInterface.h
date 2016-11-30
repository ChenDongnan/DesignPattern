//
//  builderInterface.h
//  Builder
//
//  Created by 陈栋楠 on 2016/11/30.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

@protocol builderInterface <NSObject>

-(void)buildHeader;
-(void)buildBody;
-(void)buildFooter;

-(NSString*)getProduct;

@end
