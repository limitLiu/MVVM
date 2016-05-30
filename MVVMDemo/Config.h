//
//  Config.h
//  MVVMDemo
//
//  Created by 劉裕 on 31/5/2016.
//  Copyright © 2016年 劉裕. All rights reserved.
//

#ifndef Config_h
#define Config_h

// 自定义NSLog
#ifdef DEBUG
#define LIULog(...) NSLog(__VA_ARGS__)
#else
#define LIULog(...)
#endif

#endif /* Config_h */
