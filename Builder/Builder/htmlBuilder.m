//
//  htmlBuilder.m
//  Builder
//
//  Created by 陈栋楠 on 2016/11/30.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

#import "htmlBuilder.h"

@interface htmlBuilder ()
@property (nonatomic, strong) NSMutableString *data;

@end

@implementation htmlBuilder

-(instancetype)initWithData:(NSString *)data {
    self = [super init];
    if (self) {
        self.data = [[NSMutableString alloc] initWithString:data];
    }
    return self;
}

- (void)buildHeader {
    [self.data insertString:@"\n<html.headr>\n<body>\n" atIndex:0];
}

- (void)buildBody {
    [self.data appendString:@"\n<\\body>\n"];
}

- (void)buildFooter {
    [self.data appendString:@"<html.footer>"];

}

- (NSString *)getProduct {
    return self.data;
}



@end

