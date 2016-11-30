//
//  xmlBuilder.m
//  Builder
//
//  Created by 陈栋楠 on 2016/11/30.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "xmlBuilder.h"

@interface xmlBuilder ()
@property(nonatomic,strong)NSMutableString *data;
@end


@implementation xmlBuilder
-(instancetype)initWithData:(NSString *)data {
    if (self = [super init]) {
        self.data = [[NSMutableString alloc] initWithString:data];
    }
    return self;
    
}

- (void)buildHeader {
    [self.data insertString:@"\n<xml.headr>\n<body>\n" atIndex:0];
}

- (void)buildBody {
    [self.data appendString:@"\n<\\body>\n"];
}

-(void)buildFooter{
    [self.data appendString:@"<xml.footer>"];
}
-(NSString *)getProduct{
    return self.data;
}

@end
