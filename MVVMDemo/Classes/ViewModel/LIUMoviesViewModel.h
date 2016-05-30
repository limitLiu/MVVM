//
//  LIUMoviesViewModel.h
//  MVVMDemo
//
//  Created by 劉裕 on 31/5/2016.
//  Copyright © 2016年 劉裕. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LIUViewModel;
@interface LIUMoviesViewModel : NSObject

@property (nonatomic, strong) NSArray *listItem;
- (instancetype)initWithModel:(LIUViewModel *)model;
@end
