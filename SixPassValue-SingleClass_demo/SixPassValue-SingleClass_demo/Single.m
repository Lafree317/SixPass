//
//  Single.m
//  SixPassValue-SingleClass_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "Single.h"
static Single *single = nil;
@implementation Single
+ (Single *)sharSingle{
    if (single) {
        return single;
    }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        single = [[Single alloc] init];
    });
    return single;
}
@end
