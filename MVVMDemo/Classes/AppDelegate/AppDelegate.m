//
//  AppDelegate.m
//  MVVMDemo
//
//  Created by 劉裕 on 30/5/2016.
//  Copyright © 2016年 劉裕. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LIUViewModel.h"
#import "LIUMoviesViewModel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 *  初始化視圖
 *
 *  @return 視圖控制器
 */
- (UIViewController *)setupViewController {
    LIUViewModel *viewModel = [[LIUViewModel alloc] init];
    viewModel.getPath = [[NSBundle mainBundle] pathForResource:@"movies.json" ofType:nil];
    
    LIUMoviesViewModel *moviesViewModel = [[LIUMoviesViewModel alloc] initWithModel:viewModel];
    ViewController *controller = [[ViewController alloc] init];
    controller.viewModel = moviesViewModel;
    UIViewController *mainViewController = [[UINavigationController alloc] initWithRootViewController:controller];
    return mainViewController;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = [self setupViewController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end