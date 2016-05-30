//
//  LIUMoviesViewModel.m
//  MVVMDemo
//
//  Created by 劉裕 on 31/5/2016.
//  Copyright © 2016年 劉裕. All rights reserved.
//

#import "LIUMoviesViewModel.h"
#import "LIUViewModel.h"
#import "YYModel.h"
#import "LIUDataModel.h"

@interface LIUMoviesViewModel ()
@property (nonatomic, copy) NSString *getPath;
@end

@implementation LIUMoviesViewModel

- (instancetype)initWithModel:(LIUViewModel *)model {
    self = [super init];
    if (self) {
        [RACObserve(model, getPath) subscribeNext:^(NSString *path) {
            self.getPath = path;
        }];
        [self getData];
    }
    return self;
}

- (void)getData {
    // 完全可以在介處寫網絡請求代碼
    NSString *str = [NSString stringWithContentsOfFile:self.getPath encoding:NSUTF8StringEncoding error:nil];
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    self.listItem = [NSArray yy_modelArrayWithClass:[LIUDataModel class] json:dict[@"data"][@"movies"]];
}

@end