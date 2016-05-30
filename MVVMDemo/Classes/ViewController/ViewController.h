//
//  ViewController.h
//  MVVMDemo
//
//  Created by 劉裕 on 30/5/2016.
//  Copyright © 2016年 劉裕. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LIUMoviesViewModel;
@interface ViewController : UIViewController

@property (nonatomic, strong) LIUMoviesViewModel *viewModel;
@end

